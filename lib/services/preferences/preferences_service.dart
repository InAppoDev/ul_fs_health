abstract interface class PreferencesService {
  Future<void> saveCurrentLanguage(String languageCode);
  Future<String> getCurrentLanguage();
}
