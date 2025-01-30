import 'package:freezed_annotation/freezed_annotation.dart';
part 'gps_data.freezed.dart';

@freezed
class GPSData with _$GPSData {
  const factory GPSData({
    @Default(0.0) double distanceTraveled,
    @Default(0.0) double speed,
    @Default(0.0) double accuracy
    }) = _GPSData;
}
