part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(UserStatus.inital) UserStatus status,
    UserEntity? model,
    String? errorMessage,
  }) = _Initial;
}

enum UserStatus {
  inital, loading, saved, failure, dataSaved
}
