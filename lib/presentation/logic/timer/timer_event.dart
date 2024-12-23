part of 'timer_bloc.dart';

@freezed
class TimerEvent with _$TimerEvent {
  const factory TimerEvent.startTimer(int duration) = _StartTimer;
  const factory TimerEvent.cancelTimer() = _CancelTimer;
  const factory TimerEvent.updateTimer({required int duration, required int remainingTime}) = _UpdateTimer;
  const factory TimerEvent.onPauseTimer({required int duration, required int remainingTime}) = _PauseTimer;
  const factory TimerEvent.onResume({required int duration}) = _ResumeTimer;
}
