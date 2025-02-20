import 'package:freezed_annotation/freezed_annotation.dart';
part 'timer_data.freezed.dart';
part 'timer_data.g.dart';

@freezed
class TimerData with _$TimerData {
  const factory TimerData({
    @Default(0.0) double progress,
    @Default(0) int remainingTime,
    @Default('initial') String status
  }) = _TimerData;

  factory TimerData.fromJson(Map<String, dynamic> json) =>
      _$TimerDataFromJson(json);
}
