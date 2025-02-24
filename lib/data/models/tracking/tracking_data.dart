import 'package:freezed_annotation/freezed_annotation.dart';

import '../../services/tracking/tracking_service_imp.dart';
import 'accelerometer_data.dart';
import 'gps_data.dart';

part 'tracking_data.freezed.dart';
part 'tracking_data.g.dart';

@freezed
class TrackingData with _$TrackingData {
  const factory TrackingData({
    AccelerometerData? accelerometerData,
    GpsData? gpsData,
    @Default(0.0) double distance,
    @Default(TrackingMode.none) TrackingMode mode
  }) = _TrackingData;

  factory TrackingData.fromJson(Map<String, dynamic> json) =>
      _$TrackingDataFromJson(json);
}
