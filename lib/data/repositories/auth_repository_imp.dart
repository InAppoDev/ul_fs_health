import 'package:firebase_auth/firebase_auth.dart';

import '../../core/exceptions/exceptions.dart';
import '../../domain/repositories/auth_repository.dart';
import '../services/firebase/firebase_service.dart';

class AuthRepositoryImp implements AuthRepository {
  AuthRepositoryImp({required this.firebaseService});

  final FirebaseService firebaseService;

  @override
  Future<void> logout() async => firebaseService.logout();

  @override
  Future<String> signInWithEmailPassword(String email, String password) async {
    final credential = await firebaseService.signInWithEmailPassword(email, password);
    return credential.user?.uid ?? '';
  }

  @override
  Future<String> signUpWithEmailPassword(String email, String password) async {
    final credential = await firebaseService.signUpWithEmailPassword(email, password);
    return credential.user?.uid ?? '';
  }

  @override
  Future<void> changeUserPassword(String password) async {
    final user = await firebaseService.getLoggedinUser();
    await user?.updatePassword(password);
  }

  @override
  Future<void> changeUserEmail({
    required String newEmail,
    required String currentEmail,
    required String password})
  async {

    final user = await firebaseService.getLoggedinUser();
    if (user == null) {
      throw UnauthorizedException();
    }
    try {
      final credential = await firebaseService.reAuthenticateUser(currentEmail, password);
      await user.reauthenticateWithCredential(credential);
      await user.verifyBeforeUpdateEmail(newEmail);
      await _waitForEmailVerification(user);
    } catch (e) {
      throw ConflictException();
    }
  }

  Future<void> _waitForEmailVerification(User user) async {
    while (!user.emailVerified) {
      await Future.delayed(const Duration(seconds: 3), () {});
      await user.reload();
    }
  }
}
