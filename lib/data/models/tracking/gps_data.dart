import 'package:freezed_annotation/freezed_annotation.dart';
part 'gps_data.freezed.dart';
part 'gps_data.g.dart';

@freezed
class GpsData with _$GpsData {
  const factory GpsData({
    @Default(0.0) double distanceTraveled,
    @Default(0.0) double speed,
    @Default(0.0) double accuracy,
    @Default(true) bool isGPSSignalStrong,
    @Default(0) int stepCount
    }) = _GpsData;
  factory GpsData.fromJson(Map<String, dynamic> json) =>
      _$GpsDataFromJson(json);
}
