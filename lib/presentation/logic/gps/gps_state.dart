part of 'gps_bloc.dart';

@freezed
class GPSState with _$GPSState {
  const factory GPSState({@Default(GPSStatus.initial) GPSStatus status,
    @Default(GPSData()) GPSData gpsData,
    @Default(0.0) double distanceTraveled,
    @Default(0.0) double speed,
    @Default(0.0) double startSpeed,
    @Default(0.0) double averageSpeed}) = _GPSState;
}

enum GPSStatus {
  initial,
  loading,
  failure,
  saved,
  stopped,
  running
}
