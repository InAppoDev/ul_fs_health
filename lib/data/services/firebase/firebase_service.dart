import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/constants/aliases.dart';

abstract interface class FirebaseService {
  Future<UserCredential> signInWithEmailPassword(String email, String password);
  Future<UserCredential> signUpWithEmailPassword(String email, String password);
  Future<void> logout();
  Future<User?> getLoggedinUser();
  FDocumentReference getDocument(FCollectionReference reference, String docId);

  FCollectionReference get userCollectionReference;
}
