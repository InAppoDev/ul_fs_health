import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'timer_event.dart';
part 'timer_state.dart';
part 'timer_bloc.freezed.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  TimerBloc() : super(const _Initial()) {
    on<_StartTimer>(_onStartTimer);
    on<_CancelTimer>(_onCancelTimer);
    on<_UpdateTimer>(_onUpdateTimer);
    on<_PauseTimer>(_onPauseTimer);
    on<_ResumeTimer>(_onResumeTimer);
  }

  Timer? _timer;

  Future<void> _onUpdateTimer(_UpdateTimer event, Emitter<TimerState> emit) async {
    final progress = (event.duration - event.remainingTime).toDouble() / event.duration;
    final isFinished = event.remainingTime <= 0;
    emit(state.copyWith(remainingTime: event.remainingTime,
        status: isFinished ? TimerStatus.completed : TimerStatus.running,
        progress: progress));
  }

  Future<void> _onResumeTimer(_ResumeTimer event, Emitter<TimerState> emit) async {
    emit(state.copyWith(status: TimerStatus.resumed));
  }

  Future<void> _onStartTimer(_StartTimer event, Emitter<TimerState> emit) async {
    _timer?.cancel();
    emit(state.copyWith(remainingTime: event.duration, status: TimerStatus.initial, progress: 0));
    int remainingTime = event.duration;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.status == TimerStatus.paused) {
        add(_PauseTimer(
            duration: event.duration,
            remainingTime: remainingTime));
      } else if (remainingTime > 0 && state.status != TimerStatus.cancelled) {
        --remainingTime;
        add(TimerEvent.updateTimer(
            duration: event.duration,
            remainingTime: remainingTime));
      }
      else {
        _timer?.cancel();
        _timer = null;
        remainingTime = 0;
       add(const TimerEvent.cancelTimer());
       add(TimerEvent.updateTimer(
            duration: event.duration,
            remainingTime: remainingTime));
      }
    });
  }

  Future<void> _onCancelTimer(_CancelTimer event, Emitter<TimerState> emit) async {
    emit(state.copyWith(status: TimerStatus.cancelled, remainingTime: 0));
  }

  Future<void> _onPauseTimer(_PauseTimer event, Emitter<TimerState> emit) async {
    final progress = (event.duration - event.remainingTime).toDouble() / event.duration;
    emit(state.copyWith(
      status: TimerStatus.paused,
      remainingTime: event.remainingTime,
      progress: progress,
    ));
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    _timer = null;
    return super.close();
  }
}
