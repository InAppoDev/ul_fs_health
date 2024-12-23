part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileStatus.initial) ProfileStatus status,
    UserProfile? currentUser,
    String? error,
  }) = _Initial;
}

enum ProfileStatus { initial, loading, saved, success, failure }
