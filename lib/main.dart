import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/themes/app_colors.dart';
import 'data/services/permission/permission_service.dart';
import 'data/services/tracking/tracking_service.dart';
import 'data/services/tracking_background_service/tracking_background_service.dart';
import 'di/service_locator.dart';
import 'firebase_options.dart';
import 'my_app.dart';
import 'services/preferences/preferences_service.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemStatusBarContrastEnforced: true,
      statusBarColor: lightColorScheme.surface,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarContrastEnforced: true,
      systemNavigationBarColor: lightColorScheme.surface,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: lightColorScheme.surface));
  configureDependencies();
  final language = await getIt<PreferencesService>().getCurrentLanguage();
  runApp(MyApp(initalLanguageCode: language));
}
