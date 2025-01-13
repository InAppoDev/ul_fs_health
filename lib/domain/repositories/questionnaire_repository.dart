
abstract interface class QuestionnaireRepository {
  Future<void> storeGPAQData();
  Future<void> storeLEFSData();
}
