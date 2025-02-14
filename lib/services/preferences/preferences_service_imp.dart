import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants/preferences_keys.dart';
import 'preferences_service.dart';

class PreferencesServiceImp implements PreferencesService {
  PreferencesServiceImp({required this.sharedPreferences});

  final Future<SharedPreferences> sharedPreferences;

  @override
  Future<String> getCurrentLanguage() async {
    return (await sharedPreferences).getString(PreferencesKeys.language) ?? 'en';
  }

  @override
  Future<void> saveCurrentLanguage(String languageCode) async {
    await (await sharedPreferences).setString(PreferencesKeys.language, languageCode);
  }
}
