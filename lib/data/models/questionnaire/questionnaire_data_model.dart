part of 'questionnaire_model.dart';

@freezed
class QuestionnaireDataModel with _$QuestionnaireDataModel {
  const factory QuestionnaireDataModel({
    required int daysInWeek,
    required int hours,
    required int minutes,
    required bool hasActivity}) = _QuestionnaireDataModel;

  factory QuestionnaireDataModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireDataModelFromJson(json);

  factory QuestionnaireDataModel.fromEntity(QuestionnaireDataEntity entity) =>
      QuestionnaireDataModel(
          daysInWeek: entity.daysInWeek,
          hours: entity.hours,
          hasActivity: entity.hasActivity,
          minutes: entity.minutes);

  const QuestionnaireDataModel._();

  QuestionnaireDataEntity toEntity() {
    return QuestionnaireDataEntity(
        daysInWeek: daysInWeek,
        hours: hours,
        hasActivity: hasActivity,
        minutes: minutes);
  }
}