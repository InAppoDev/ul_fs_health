import '../../domain/repositories/profile_repository.dart';
import '../models/profile/user_profile.dart';
import '../services/firebase/firebase_service.dart';

class ProfileRepositoryImp implements ProfileRepository {
  ProfileRepositoryImp({required this.firebaseService});

  final FirebaseService firebaseService;

  @override
  Future<void> updateUserProfile(String email, String password, String newPassword) async {
    await firebaseService.reAuthenticateUser(email, password);
    await firebaseService.changeUserPassword(newPassword);
    await firebaseService.changeUserEmail(email);
  }

  @override
  Future<UserProfile> getUserProfile() async {
    final user = await firebaseService.getLoggedinUser();
    return UserProfile(email: user?.email ?? '');
  }


}
