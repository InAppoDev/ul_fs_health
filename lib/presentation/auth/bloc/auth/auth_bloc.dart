import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/repositories/auth_repository.dart';
import '../../../../domain/repositories/user_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepository, this.userRepository) : super(const _Initial()) {
    on<_LoginEvent>(_onMapLoginEventToState);
    on<_SignUpEvent>(_onMapSignUpEventToState);
  }

  final AuthRepository authRepository;
  final UserRepository userRepository;

  FutureOr<void> _onMapLoginEventToState(
      _LoginEvent event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(status: AuthStatus.loading));
      final userId = await authRepository.signInWithEmailPassword(
          event.email, event.password);
      emit(state.copyWith(status: AuthStatus.successLogin, userId: userId));
    } catch (e) {
      emit(state.copyWith(status: AuthStatus.failure, error: e.toString()));
    }
  }

  FutureOr<void> _onMapSignUpEventToState(
      _SignUpEvent event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(status: AuthStatus.loading));
      final userId = await authRepository.signUpWithEmailPassword(
          event.email, event.password);
      emit(state.copyWith(status: AuthStatus.successSignup, userId: userId));
    } catch (e) {
      emit(state.copyWith(status: AuthStatus.failure, error: e.toString()));
    }
  }
}
