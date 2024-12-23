abstract interface class AuthRepository {
  Future<String> signInWithEmailPassword(String email, String password);
  Future<String> signUpWithEmailPassword(String email, String password);
  Future<void> changeUserPassword(String password);
  Future<void> changeUserEmail(String email);
  Future<void> logout();
}
