part of 'walk_test_bloc.dart';


@freezed
class WalkTestState with _$WalkTestState {
  const factory WalkTestState({
    @Default(WalkTestStatus.initial) WalkTestStatus status,
    String? selectedLength,
    @Default(false) bool isValid
  }) = _Initial;
}

enum WalkTestStatus {
  initial,
  loading,
  failure,
  success
}

