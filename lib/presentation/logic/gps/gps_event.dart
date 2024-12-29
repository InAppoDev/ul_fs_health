part of 'gps_bloc.dart';

@freezed
class GPSEvent with _$GPSEvent {
  const factory GPSEvent.startTracking() = _StartTracking;
  const factory GPSEvent.stopTracking({required int duration}) = _StopTracking;
  const factory GPSEvent.updatePosition() = _UpdatePosition;
  const factory GPSEvent.updateAverageSpeed({required double averageSpeed}) = _UpdateAverageSpeed;
  const factory GPSEvent.updateStartingSpeed({required int duration}) = _UpdateStartingSpeed;
  const factory GPSEvent.reachGoal({required double goalDistance}) = _ReachGoal;
}