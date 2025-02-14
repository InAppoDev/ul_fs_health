import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/calculation_constants.dart';
import '../../../data/models/tracking/tracking_data.dart';
import '../../../data/services/tracking_background_service/tracking_background_service.dart';
import '../../../services/background_service/background_service.dart';

part 'gps_event.dart';

part 'gps_state.dart';

part 'gps_bloc.freezed.dart';

class GPSBloc extends Bloc<GPSEvent, GPSState> {
  GPSBloc(this.trackingBackgroundService) : super(const _GPSState()) {
    on<_StartTracking>(_onStartTracking);
    on<_StopTracking>(_onStopTracking);
    on<_UpdatePosition>(_onUpdatePosition);
    on<_UpdateData>(_onUpdateData);
    on<_UpdateAverageSpeed>(_onUpdateAverageSpeed);
    on<_UpdateStartingSpeed>(_onUpdateStartingSpeed);
    on<_ReachGoal>(_onReachGoal);
  }

  final TrackingBackgroundService trackingBackgroundService;

  Future<void> _onUpdateAverageSpeed(_UpdateAverageSpeed event, Emitter<GPSState> emit) async {
    emit(state.copyWith(averageSpeed: event.averageSpeed));
  }

  Future<void> _onStartTracking(_StartTracking event, Emitter<GPSState> emit) async {
    emit(state.copyWith(status: GPSStatus.loading));
    await startBackgroundService();
    await trackingBackgroundService.startTracking();
    emit(state.copyWith(status: GPSStatus.running));
  }

  Future<void> _onStopTracking(_StopTracking event, Emitter<GPSState> emit) async {
    emit(state.copyWith(status: GPSStatus.loading));
    await stopBackgroundService();
    final data = await trackingBackgroundService.getTrackingData();
    await trackingBackgroundService.stopTracking();
    final double duration = event.duration.toDouble();
    final double distance = state.distanceTraveled;
    final double averageSpeed =
        _calculateAverageSpeed(duration, distance, data.gpsData?.speed ?? 0.0);

    emit(state.copyWith(status: GPSStatus.stopped, averageSpeed: averageSpeed));
  }

  Future<void> _onUpdatePosition(_UpdatePosition event, Emitter<GPSState> emit) async {
    final data = await trackingBackgroundService.getTrackingData();
    emit(state.copyWith(
      trackingData: data,
      distanceTraveled: (data.isGps
              ? data.gpsData?.distanceTraveled
              : data.accelerometerData?.distanceTraveled) ??
          0.0,
      status: GPSStatus.saved,
      speed: data.isGps ? data.gpsData?.speed ?? 0.0 : 0.0,
    ));
  }

  Future<void> _onUpdateData(_UpdateData event, Emitter<GPSState> emit) async {
    final data = await trackingBackgroundService.getTrackingData();
    emit(state.copyWith(
      distanceTraveled: (data.isGps
          ? data.gpsData?.distanceTraveled
          : data.accelerometerData?.distanceTraveled) ??
          0.0,
      trackingData: data,
    ));
  }

  FutureOr<void> _onUpdateStartingSpeed(_UpdateStartingSpeed event, Emitter<GPSState> emit) async {
    final double startingDistance = CalculationConstants.startingDistance;
    final data = await trackingBackgroundService.getTrackingData();
    double distance = 0.0;
    double speed = 0.0;
    if (data.isGps) {
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
    final data = await trackingBackgroundService.getTrackingData();
    final double distance =
        (data.isGps ? data.gpsData?.distanceTraveled : data.accelerometerData?.distanceTraveled) ??
            0.0;
    if (distance >= goalDistance) {
      emit(state.copyWith(status: GPSStatus.loading));
      await trackingBackgroundService.stopTracking();
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
    await trackingBackgroundService.dispose();
    return super.close();
  }
}
