import 'package:freezed_annotation/freezed_annotation.dart';

part 'accelerometer_data.freezed.dart';

@freezed
class AccelerometerData with _$AccelerometerData {
  const factory AccelerometerData({
    @Default(0.0) double distanceTraveled,
    @Default(0) int stepCount
  }) = _AccelerometerData;
}
