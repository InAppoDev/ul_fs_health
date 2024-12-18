import '../../domain/repositories/auth_repository.dart';
import '../services/firebase/firebase_service.dart';

class AuthRepositoryImp implements AuthRepository {
  AuthRepositoryImp({required this.firebaseService});

  final FirebaseService firebaseService;

  @override
  Future<void> logout() async => firebaseService.logout();

  @override
  Future<String> signInWithEmailPassword(String email, String password) async {
    final credential =
        await firebaseService.signInWithEmailPassword(email, password);
    return credential.user?.uid ?? '';
  }

  @override
  Future<String> signUpWithEmailPassword(String email, String password) async {
    final credential =
        await firebaseService.signUpWithEmailPassword(email, password);
    return credential.user?.uid ?? '';
  }
}
