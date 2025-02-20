import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/calculation_constants.dart';
import '../../../data/models/tracking/tracking_data.dart';
import '../../../domain/usecase/tracking_use_case.dart';
import '../../../data/services/tracking/tracking_service_imp.dart';

part 'gps_event.dart';

part 'gps_state.dart';

part 'gps_bloc.freezed.dart';

class GPSBloc extends Bloc<GPSEvent, GPSState> {
  GPSBloc(this.trackingUseCase) : super(const _GPSState()) {
    on<_StartTracking>(_onStartTracking);
    on<_StopTracking>(_onStopTracking);
    on<_UpdatePosition>(_onUpdatePosition);
    on<_UpdateData>(_onUpdateData);
    on<_UpdateAverageSpeed>(_onUpdateAverageSpeed);
    on<_UpdateStartingSpeed>(_onUpdateStartingSpeed);
    on<_ReachGoal>(_onReachGoal);
  }

  final TrackingUseCase trackingUseCase;

  Future<void> _onUpdateAverageSpeed(_UpdateAverageSpeed event, Emitter<GPSState> emit) async {
    emit(state.copyWith(averageSpeed: event.averageSpeed));
  }

  Future<void> _onStartTracking(_StartTracking event, Emitter<GPSState> emit) async {
    emit(state.copyWith(status: GPSStatus.loading));
    await trackingUseCase.startTracking();
    emit(state.copyWith(status: GPSStatus.running));
  }

  Future<void> _onStopTracking(_StopTracking event, Emitter<GPSState> emit) async {
    emit(state.copyWith(status: GPSStatus.loading));
    final data = await trackingUseCase.getTrackingData();
    await trackingUseCase.stopTracking();
    final double duration = event.duration.toDouble();
    final double distance = state.distanceTraveled;
    final double averageSpeed =
        _calculateAverageSpeed(duration, distance, data.gpsData?.speed ?? 0.0);

    emit(state.copyWith(status: GPSStatus.stopped, averageSpeed: averageSpeed));
  }

  Future<void> _onUpdatePosition(_UpdatePosition event, Emitter<GPSState> emit) async {
    final data = await trackingUseCase.getTrackingData();
    emit(state.copyWith(
      trackingData: data,
      distanceTraveled: (data.mode == TrackingMode.gps
              ? data.gpsData?.distanceTraveled
              : data.accelerometerData?.distanceTraveled) ??
          0.0,
      status: GPSStatus.saved,
      speed: data.mode == TrackingMode.gps ? data.gpsData?.speed ?? 0.0 : 0.0,
    ));
  }

  Future<void> _onUpdateData(_UpdateData event, Emitter<GPSState> emit) async {
    final data = await trackingUseCase.getTrackingData();
    emit(state.copyWith(
      distanceTraveled: (data.mode == TrackingMode.gps
          ? data.gpsData?.distanceTraveled
          : data.accelerometerData?.distanceTraveled) ??
          0.0,
      trackingData: data,
    ));
  }

  FutureOr<void> _onUpdateStartingSpeed(_UpdateStartingSpeed event, Emitter<GPSState> emit) async {
    final double startingDistance = CalculationConstants.startingDistance;
    final data = await trackingUseCase.getTrackingData();
    double distance = 0.0;
    double speed = 0.0;
    if (data.mode == TrackingMode.gps) {
      distance = data.gpsData?.distanceTraveled ?? 0.0;
      speed = data.gpsData?.speed ?? 0.0;
    } else {
      distance = data.accelerometerData?.distanceTraveled ?? 0.0;
    }
    if (distance == startingDistance) {
      final double startSpeed =
          _calculateAverageSpeed(event.duration.toDouble(), startingDistance, speed);
      emit(state.copyWith(startSpeed: startSpeed));
    }
  }

  FutureOr<void> _onReachGoal(_ReachGoal event, Emitter<GPSState> emit) async {
    final double goalDistance = event.goalDistance;
    final data = await trackingUseCase.getTrackingData();
    final double distance =
        (data.mode == TrackingMode.gps ? data.gpsData?.distanceTraveled : data.accelerometerData?.distanceTraveled) ??
            0.0;
    if (distance >= goalDistance) {
      emit(state.copyWith(status: GPSStatus.loading));
      await trackingUseCase.stopTracking();
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
    await trackingUseCase.dispose();
    return super.close();
  }
}
