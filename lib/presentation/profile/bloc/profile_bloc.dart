import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/profile/user_profile.dart';
import '../../../domain/repositories/auth_repository.dart';
import '../../../domain/repositories/profile_repository.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this.profileRepository, this.authRepository) : super(const _Initial()) {
    on<_GetProfile>(_onGetProfile);
    on<_UpdateProfile>(_onUpdateProfile);
    on<_ResetStaus>(_onResetStatus);
  }

  final ProfileRepository profileRepository;
  final AuthRepository authRepository;

  Future<void> _onResetStatus(_ResetStaus event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: ProfileStatus.initial));
  }

  Future<void> _onGetProfile(_GetProfile event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: ProfileStatus.loading));
    try {
      final user = await profileRepository.getUserProfile();
      emit(state.copyWith(currentUser: user, status: ProfileStatus.loaded));
    } catch (e) {
      emit(state.copyWith(status: ProfileStatus.failure, error: e.toString()));
    }
  }

  Future<void> _onUpdateProfile(_UpdateProfile event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(status: ProfileStatus.loading));
    try {
      final oldEmail = state.currentUser?.email ?? '';
      if (event.newPassword.isNotEmpty) {
        await authRepository.changeUserPassword(event.newPassword);
      }
      await authRepository.changeUserEmail(
          newEmail: event.email,
          currentEmail: oldEmail,
          password: event.password);
      final user = await profileRepository.getUserProfile();
      emit(state.copyWith(status: ProfileStatus.success, currentUser: user));
    } catch (e) {
      emit(state.copyWith(status: ProfileStatus.failure, error: e.toString()));
    }
  }
}
