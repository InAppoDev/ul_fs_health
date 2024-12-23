import 'package:firebase_auth/firebase_auth.dart';

import '../../domain/repositories/profile_repository.dart';
import '../models/profile/user_profile.dart';
import '../services/firebase/firebase_service.dart';

class ProfileRepositoryImp implements ProfileRepository {
  ProfileRepositoryImp({required this.firebaseService});

  final FirebaseService firebaseService;

  @override
  Future<void> updateUserProfile(String oldEmail, String email, String password, String newPassword) async {
    final User? user = await firebaseService.getLoggedinUser();
    print("KKKKK:::: $oldEmail $email");
    AuthCredential credential = EmailAuthProvider.credential(
      email: oldEmail,
      password: password,
    );
    // await user?.reauthenticateWithCredential(credential);
    // credential = EmailAuthProvider.credential(
    //   email: oldEmail,
    //   password: newPassword,
    // );
    await user?.reauthenticateWithCredential(credential);
    // await user?.updatePassword(newPassword);

    await user?.verifyBeforeUpdateEmail(email);
    await user?.reload();
    final User? res = await firebaseService.getLoggedinUser();
    print("PPPP:::: ${res?.email}");
  }

  @override
  Future<UserProfile> getUserProfile() async {
    final user = await firebaseService.getLoggedinUser();
    return UserProfile(email: user?.email ?? '');
  }


}
