import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import '../data/repositories/auth_repository_imp.dart';
import '../data/repositories/user_repository_imp.dart';
import '../data/services/firebase/firebase_service.dart';
import '../data/services/firebase/firebase_service_imp.dart';
import '../domain/repositories/auth_repository.dart';
import '../domain/repositories/user_repository.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  _configureServices();
  _configureRepositories();
}

void _configureServices() {
  getIt.registerSingleton<FirebaseService>(
    FirebaseServiceImp(
      auth: FirebaseAuth.instance,
      firestore: FirebaseFirestore.instance,
    ),
  );
}

void _configureRepositories() {
  getIt
    ..registerLazySingleton<AuthRepository>(
        () => AuthRepositoryImp(firebaseService: getIt<FirebaseService>()))
    ..registerLazySingleton<UserRepository>(
        () => UserRepositoryImp(firebaseService: getIt<FirebaseService>()));
}
