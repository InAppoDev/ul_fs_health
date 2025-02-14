import 'package:freezed_annotation/freezed_annotation.dart';

part 'accelerometer_data.freezed.dart';
part 'accelerometer_data.g.dart';

@freezed
class AccelerometerData with _$AccelerometerData {
  const factory AccelerometerData({
    @Default(0.0) double distanceTraveled,
    @Default(0) int stepCount
  }) = _AccelerometerData;

  factory AccelerometerData.fromJson(Map<String, dynamic> json) =>
      _$AccelerometerDataFromJson(json);
}
