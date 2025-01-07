part of 'result_bloc.dart';


@freezed
class ResultState with _$ResultState {
  const factory ResultState({
    @Default(ResultStatus.initial) ResultStatus status,
    @Default([]) List<WalkResultEntity> results,
    String? errorText,
  }) = _Initial;
}

enum ResultStatus {
  initial,
  loading,
  failure,
  success
}

