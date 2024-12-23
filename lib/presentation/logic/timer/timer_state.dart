part of 'timer_bloc.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState({
    @Default(TimerStatus.initial) TimerStatus status,
    @Default(360) int remainingTime,
    @Default(0) double progress
  }) = _Initial;

  const TimerState._();
}

enum TimerStatus {
  initial,
  running,
  cancelled,
  completed,
  paused
}

