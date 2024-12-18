import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/user_model.dart';
import '../../../domain/repositories/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this.userRepository) : super(const _Initial()) {
    on<_SaveUserData>(_onSaveUserData);
  }

  final UserRepository userRepository;
  
  Future<void> _onSaveUserData(
      _SaveUserData event, Emitter<UserState> emit) async {
    try {
      emit(state.copyWith(status: UserStatus.loading));
      await userRepository.saveUserData(event.userModel);
      emit(state.copyWith(model: event.userModel));
    } catch (e) {
      emit(state.copyWith(status: UserStatus.failure, errorMessage: e.toString()));
    }
  }
}
