part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.started() = _Started;
  const factory UserEvent.saveUserData(UserEntity entity, [@Default(UserStatus.saved) UserStatus successStatus]) = _SaveUserData;
  const factory UserEvent.getUserData() = _GetUserData;
}
