import '../entities/questionnaire/questionnaire_entity.dart';

abstract interface class QuestionnaireRepository {
  Future<void> storeGPAQWorkData(
      {required QuestionnaireEntity entity});

  Future<void> storeGPAQRecreationData(
      {required QuestionnaireEntity entity});

  Future<void> storeGPAQTravelData(
      {required QuestionnaireEntity entity});

  Future<void> storeGPAQSedentaryData(
      {required QuestionnaireEntity entity});

  Future<void> storeLEFSData(
      {required QuestionnaireEntity entity});
}
