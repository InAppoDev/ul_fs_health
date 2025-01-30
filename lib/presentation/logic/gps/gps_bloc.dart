import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/calculation_constants.dart';
import '../../../data/models/gps/gps_data.dart';
import '../../../domain/usecase/gps_use_case.dart';

part 'gps_event.dart';

part 'gps_state.dart';

part 'gps_bloc.freezed.dart';

class GPSBloc extends Bloc<GPSEvent, GPSState> {
  GPSBloc(this.gpsUseCase) : super(const _GPSState()) {
    on<_StartTracking>(_onStartTracking);
    on<_StopTracking>(_onStopTracking);
    on<_UpdatePosition>(_onUpdatePosition);
    on<_UpdateData>(_onUpdateData);
    on<_UpdateAverageSpeed>(_onUpdateAverageSpeed);
    on<_UpdateStartingSpeed>(_onUpdateStartingSpeed);
    on<_ReachGoal>(_onReachGoal);
  }

  final GpsUseCase gpsUseCase;

  Future<void> _onUpdateAverageSpeed(_UpdateAverageSpeed event, Emitter<GPSState> emit) async {
    emit(state.copyWith(averageSpeed: event.averageSpeed));
  }

  Future<void> _onStartTracking(_StartTracking event, Emitter<GPSState> emit) async {
    emit(state.copyWith(status: GPSStatus.loading));
    await gpsUseCase.startTracking();
    emit(state.copyWith(status: GPSStatus.running));
  }

  Future<void> _onStopTracking(_StopTracking event, Emitter<GPSState> emit) async {
    emit(state.copyWith(status: GPSStatus.loading));
    final data = await gpsUseCase.getGpsData();
    await gpsUseCase.stopTracking();
    final double duration = event.duration.toDouble();
    final double distance = state.distanceTraveled;
    final double averageSpeed = _calculateAverageSpeed(duration, distance, data.speed);

    emit(state.copyWith(status: GPSStatus.stopped, averageSpeed: averageSpeed));
  }

  Future<void> _onUpdatePosition(_UpdatePosition event, Emitter<GPSState> emit) async {
    final data = await gpsUseCase.getGpsData();
    emit(state.copyWith(
      gpsData: data,
      distanceTraveled: data.distanceTraveled,
      status: GPSStatus.saved,
      speed: data.speed,
    ));
  }

  Future<void> _onUpdateData(_UpdateData event, Emitter<GPSState> emit) async {
    final data = await gpsUseCase.getGpsData();
    emit(state.copyWith(
      gpsData: data,
    ));
  }

  FutureOr<void> _onUpdateStartingSpeed(_UpdateStartingSpeed event, Emitter<GPSState> emit) async {
    final double startingDistance = CalculationConstants.startingDistance;
    final data = await gpsUseCase.getGpsData();
    if (data.distanceTraveled == startingDistance) {
      final double startSpeed =
          _calculateAverageSpeed(event.duration.toDouble(), startingDistance, data.speed);
      emit(state.copyWith(startSpeed: startSpeed));
    }
  }

  FutureOr<void> _onReachGoal(_ReachGoal event, Emitter<GPSState> emit) async {
    final double goalDistance = event.goalDistance;
    final data = await gpsUseCase.getGpsData();

    if (data.distanceTraveled >= goalDistance) {
      emit(state.copyWith(status: GPSStatus.loading));
      await gpsUseCase.stopTracking();
      emit(state.copyWith(status: GPSStatus.stopped));
    }
  }

  double _calculateAverageSpeed(double duration, double distance, double speed) {
    double averageSpeed = 0.0;

    if (duration > 0) {
      averageSpeed = distance / duration;
    }

    if (speed > 0.0) {
      final double distanceBasedSpeedFactor = CalculationConstants.distanceBasedSpeedFactor;
      final double instantaneousSpeedFactor = CalculationConstants.instantaneousSpeedFactor;
      averageSpeed = (averageSpeed * distanceBasedSpeedFactor) + (speed * instantaneousSpeedFactor);
    }
    return averageSpeed;
  }

  @override
  Future<void> close() async {
    await gpsUseCase.dispose();
    return super.close();
  }
}
