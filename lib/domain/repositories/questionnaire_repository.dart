import '../entities/questionnaire/questionnaire_entity.dart';

abstract interface class QuestionnaireRepository {
  Future<void> storeData({required QuestionnaireEntity entity});
}
