import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/constants/aliases.dart';
import 'firebase_service.dart';

mixin FirebaseMixin {
  final kUserCollection = 'users';
}

class FirebaseServiceImp with FirebaseMixin implements FirebaseService {
  FirebaseServiceImp({required this.auth, required this.firestore});

  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  @override
  Future<UserCredential> signInWithEmailPassword(
          String email, String password) async =>
      auth.signInWithEmailAndPassword(email: email, password: password);

  @override
  Future<UserCredential> signUpWithEmailPassword(
          String email, String password) async =>
      auth.createUserWithEmailAndPassword(email: email, password: password);

  @override
  Future<User?> getLoggedinUser() async => auth.currentUser;

  @override
  Future<void> logout() async => auth.signOut();

  @override
  FDocumentReference getDocument(
          FCollectionReference reference, String docId) =>
      reference.doc(docId);

  @override
  FCollectionReference get userCollectionReference =>
      firestore.collection(kUserCollection);
}
