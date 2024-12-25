import '../../data/models/profile/user_profile.dart';

abstract interface class ProfileRepository {
  Future<UserProfile> getUserProfile();
}
