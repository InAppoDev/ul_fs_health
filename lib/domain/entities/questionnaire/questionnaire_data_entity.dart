part of 'questionnaire_entity.dart';

@freezed
class QuestionnaireDataEntity with _$QuestionnaireDataEntity {
  const factory QuestionnaireDataEntity({
    required int daysInWeek,
    required int hours,
    required int minutes,
    required bool hasActivity
  }) = _QuestionnaireDataEntity;
}
