import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/user_model.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/repositories/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this.userRepository) : super(const _Initial()) {
    on<_SaveUserData>(_onSaveUserData);
    on<_GetUserData>(_onGetUserData);
  }

  final UserRepository userRepository;

  Future<void> _onSaveUserData(
      _SaveUserData event, Emitter<UserState> emit) async {
    try {
      emit(state.copyWith(status: UserStatus.loading));
      await userRepository.saveUserData(event.entity);
      emit(state.copyWith(model: event.entity, status: event.successStatus));
    } catch (e) {
      emit(state.copyWith(
          status: UserStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onGetUserData(
      _GetUserData event, Emitter<UserState> emit) async {
    try {
      emit(state.copyWith(status: UserStatus.loading));
      final user = await userRepository.getLoggedInUser();
      emit(state.copyWith(model: user, status: UserStatus.saved));
    } catch (e) {
      emit(state.copyWith(
          status: UserStatus.failure, errorMessage: e.toString()));
    }
  }
}
