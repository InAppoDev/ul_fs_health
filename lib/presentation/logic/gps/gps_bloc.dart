import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/calculation_constants.dart';
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


  Future<void> _onUpdateAverageSpeed(_UpdateAverageSpeed event, Emitter<GPSState> emit) async {
    emit(state.copyWith(averageSpeed: event.averageSpeed));
  }

  Future<void> _onStartTracking(_StartTracking event, Emitter<GPSState> emit) async {
    emit(state.copyWith(status: GPSStatus.loading));
    await gpsService.startTracking();
    emit(state.copyWith(status: GPSStatus.running));
  }

  Future<void> _onStopTracking(_StopTracking event, Emitter<GPSState> emit) async {
    emit(state.copyWith(status: GPSStatus.loading));
    await gpsService.stopTracking();
    final double duration = event.duration.toDouble();
    final double distance = state.distanceTraveled;

    double averageSpeed = 0.0;

    if (duration > 0) {
      averageSpeed = distance / duration;
    }

    if (gpsService.speed > 0.0) {
      final double distanceBasedSpeedFactor = CalculationConstants.distanceBasedSpeedFactor;
      final double instantaneousSpeedFactor = CalculationConstants.instantaneousSpeedFactor;
      averageSpeed = (averageSpeed * distanceBasedSpeedFactor) + (gpsService.speed * instantaneousSpeedFactor);
    }

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
