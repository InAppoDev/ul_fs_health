part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(String email, String password) = _LoginEvent;
  const factory AuthEvent.signup(String email, String password) =
      _SignUpEvent;
}
