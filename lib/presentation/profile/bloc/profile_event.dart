part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getProfile() = _GetProfile;
  const factory ProfileEvent.updateUserProfile({
        required String email,
        required String password,
        required String newPassword
      }) = _UpdateProfile;
  const factory ProfileEvent.resetStatus() = _ResetStaus;
}

