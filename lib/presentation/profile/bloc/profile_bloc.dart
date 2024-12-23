import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/profile/user_profile.dart';
import '../../../domain/repositories/profile_repository.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this.profileRepository) : super(const _Initial()) {
    on<_GetProfile>(_onGetProfile);
    on<_UpdateProfile>(_onUpdateProfile);
    on<_ResetStaus>(_onResetStatus);
  }

  final ProfileRepository profileRepository;

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
      await profileRepository.updateUserProfile(
          oldEmail, event.email, event.password, event.newPassword);
      emit(state.copyWith(status: ProfileStatus.success));
    } catch (e) {
      emit(state.copyWith(status: ProfileStatus.failure, error: e.toString()));
    }
  }
}
