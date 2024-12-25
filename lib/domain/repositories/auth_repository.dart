abstract interface class AuthRepository {
  Future<String> signInWithEmailPassword(String email, String password);
  Future<String> signUpWithEmailPassword(String email, String password);
  Future<void> changeUserPassword(String password);
  Future<void> changeUserEmail({
    required String newEmail,
    required String currentEmail,
    required String password});

  Future<void> logout();
}
