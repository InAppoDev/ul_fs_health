part of 'gps_bloc.dart';

@freezed
class GPSEvent with _$GPSEvent {
  const factory GPSEvent.startTracking() = _StartTracking;
  const factory GPSEvent.stopTracking({required int remainingTime}) = _StopTracking;
  const factory GPSEvent.updatePosition(Position position) = _UpdatePosition;
  const factory GPSEvent.updateAverageSpeed({required double averageSpeed}) = _UpdateAverageSpeed;
}