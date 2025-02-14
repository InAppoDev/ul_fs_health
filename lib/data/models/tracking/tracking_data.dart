import 'package:freezed_annotation/freezed_annotation.dart';

import 'accelerometer_data.dart';
import 'gps_data.dart';

part 'tracking_data.freezed.dart';
part 'tracking_data.g.dart';

@freezed
class TrackingData with _$TrackingData {
  const factory TrackingData({
    AccelerometerData? accelerometerData,
    GpsData? gpsData,
    @Default(true) bool isGps
  }) = _TrackingData;

  factory TrackingData.fromJson(Map<String, dynamic> json) =>
      _$TrackingDataFromJson(json);
}
