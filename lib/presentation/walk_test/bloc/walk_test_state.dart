part of 'walk_test_bloc.dart';

@freezed
class WalkTestState with _$WalkTestState {
  const factory WalkTestState({
    @Default(WalkTestStatus.initial) WalkTestStatus status,
    double? selectedLength,
    String? errorText,
    @Default(false) bool isValid,
    List<WalkResultEntity>? walkResults,
  }) = _Initial;
}

enum WalkTestStatus { initial, loading, failure, success }

