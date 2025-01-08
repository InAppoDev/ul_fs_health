import 'package:freezed_annotation/freezed_annotation.dart';

part 'sit_to_stand_state.freezed.dart';

@freezed
class SitToStandState with _$SitToStandState {
  const factory SitToStandState({
    @Default(false) bool isTestRunning,
    @Default(false) bool isTestReady,
    @Default(false) bool isTestFinished,
    @Default(0.0) double avgTime,
    @Default(0.0) double avgVelocity,
    @Default(0) int currentRepetition,
    @Default(5) int totalRepetitions,
    @Default(0.0) double bestTime,
    @Default(0.0) double bestVelocity,
    @Default(0.0) double bestPower,
    @Default(0.0) double progress,
    @Default(SitToStandStatus.initial) SitToStandStatus status,
    @Default([]) List<int> times,
    @Default(false) bool buttonsVisible,
    String? error,
  }) = _SitToStandState;
}

enum SitToStandStatus { initial, failure, start, stop, save }
