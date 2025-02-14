import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/repositories/auth_repository_imp.dart';
import '../data/repositories/profile_repository_imp.dart';
import '../data/repositories/questionnaire_repository_imp.dart';
import '../data/repositories/sit_to_stand_repository_imp.dart';
import '../data/repositories/user_repository_imp.dart';
import '../data/repositories/walk_repository_imp.dart';
import '../data/services/firebase/firebase_service.dart';
import '../data/services/firebase/firebase_service_imp.dart';
import '../data/services/gps/gps_service.dart';
import '../data/services/gps/gps_service_imp.dart';
import '../data/services/indoor_tracking/indoor_tracking_service.dart';
import '../data/services/indoor_tracking/indoor_tracking_service_imp.dart';
import '../data/services/permission/gps_permission_service.dart';
import '../data/services/permission/permission_service.dart';
import '../data/services/tracking/tracking_service.dart';
import '../data/services/tracking/tracking_service_imp.dart';
import '../domain/repositories/auth_repository.dart';
import '../domain/repositories/profile_repository.dart';
import '../domain/repositories/questionnaire_repository.dart';
import '../domain/repositories/sit_to_stand_repository.dart';
import '../domain/repositories/user_repository.dart';
import '../domain/repositories/walk_repository.dart';
import '../services/preferences/preferences_service.dart';
import '../services/preferences/preferences_service_imp.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  _configureGeneralDependencies();
  _configureServices();
  _configureRepositories();
}

void _configureGeneralDependencies() {
  getIt.registerLazySingleton<PreferencesService>(() => PreferencesServiceImp(
        sharedPreferences: SharedPreferences.getInstance(),
      ));
}

void _configureServices() {
  getIt
    ..registerSingleton<FirebaseService>(
      FirebaseServiceImp(
        auth: FirebaseAuth.instance,
        firestore: FirebaseFirestore.instance,
      ),
    )
    ..registerLazySingleton<PermissionService>(() => GpsPermissionService())
    ..registerFactory<GPSService>(() => GPSServiceImp(getIt<PermissionService>()))
    ..registerFactory<IndoorTrackingService>(() => IndoorTrackingServiceImp())
    ..registerFactory<TrackingService>(
        () => TrackingServiceImp(getIt<GPSService>(), getIt<IndoorTrackingService>()));
}

void _configureRepositories() {
  getIt
    ..registerLazySingleton<AuthRepository>(
        () => AuthRepositoryImp(firebaseService: getIt<FirebaseService>()))
    ..registerLazySingleton<UserRepository>(
        () => UserRepositoryImp(firebaseService: getIt<FirebaseService>()))
    ..registerLazySingleton<ProfileRepository>(
        () => ProfileRepositoryImp(firebaseService: getIt<FirebaseService>()))
    ..registerLazySingleton<SitToStandRepository>(
        () => SitToStandRepositoryImp(firebaseService: getIt<FirebaseService>()))
    ..registerLazySingleton<WalkRepository>(
        () => WalkRepositoryImp(firebaseService: getIt<FirebaseService>()))
    ..registerLazySingleton<QuestionnaireRepository>(
        () => QuestionnaireRepositoryImp(firebaseService: getIt<FirebaseService>()));
}

