import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'di/service_locator.dart';
import 'firebase_options.dart';
import 'my_app.dart';
import 'services/preferences/preferences_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  final language = await getIt<PreferencesService>().getCurrentLanguage();
  runApp(MyApp(initalLanguageCode: language));
}
