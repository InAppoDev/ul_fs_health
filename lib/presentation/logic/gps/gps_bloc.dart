import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

import '../../../data/services/gps/gps_service.dart';

part 'gps_event.dart';

part 'gps_state.dart';

part 'gps_bloc.freezed.dart';

class GPSBloc extends Bloc<GPSEvent, GPSState> {
  GPSBloc(this.gpsService) : super(const _GPSState()) {

    on<_StartTracking>(_onStartTracking);
    on<_StopTracking>(_onStopTracking);
    on<_UpdatePosition>(_onUpdatePosition);
    on<_UpdateAverageSpeed>(_onUpdateAverageSpeed);
  }

  GPSService gpsService;

  StreamSubscription<Position>? _positionSubscription;


  Future<void> _onUpdateAverageSpeed(_UpdateAverageSpeed event, Emitter<GPSState> emit) async {
    emit(state.copyWith(averageSpeed: event.averageSpeed));
  }

  Future<void> _onStartTracking(_StartTracking event, Emitter<GPSState> emit) async {
    emit(state.copyWith(status: GPSStatus.loading));
    await gpsService.startTracking();
    _positionSubscription = gpsService.positionStream.listen((position) {
      add(_UpdatePosition(position));
    });
    emit(state.copyWith(status: GPSStatus.running));
  }

  Future<void> _onStopTracking(_StopTracking event, Emitter<GPSState> emit) async {
    await gpsService.stopTracking();
    _positionSubscription?.cancel();
    final double averageSpeed = event.remainingTime == 0
        ? 0.0
        : state.distanceTraveled / event.remainingTime;
    emit(state.copyWith(status: GPSStatus.stopped, averageSpeed: averageSpeed));
  }

  Future<void> _onUpdatePosition(_UpdatePosition event, Emitter<GPSState> emit) async {
    emit(state.copyWith(
      distanceTraveled: gpsService.distanceTraveled,
      status: GPSStatus.saved,
      speed: gpsService.speed,
    ));
  }

  @override
  Future<void> close() async {
    await gpsService.dispose();
    return super.close();
  }
}
