import '../../data/models/profile/user_profile.dart';

abstract interface class ProfileRepository {
  Future<void> updateUserProfile(String email, String password, String newPassword);
  Future<UserProfile> getUserProfile();

}
