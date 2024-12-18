part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.inital) AuthStatus status,
    String? userId,
    String? error,
  }) = _Initial;
}

enum AuthStatus { inital, loading, successLogin, successSignup, failure }
