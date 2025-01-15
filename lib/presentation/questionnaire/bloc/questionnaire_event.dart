part of 'questionnaire_bloc.dart';

@freezed
class QuestionnaireEvent with _$QuestionnaireEvent {

  factory QuestionnaireEvent.selectActivity(
      {required bool hasActivity,
      required QuestionnaireFillStatus fillStatus}) = _SelectActivity;

  factory QuestionnaireEvent.selectDaysInWeek(
      {int? daysInWeek,
      required bool shouldValidate,
      required QuestionnaireFillStatus fillStatus}) = _SelectDaysInWeek;

  factory QuestionnaireEvent.selectHour(
      {required int hours, required QuestionnaireFillStatus fillStatus}) = _SelectHours;

  factory QuestionnaireEvent.selectMinutes(
      {required int minutes,
      required QuestionnaireFillStatus fillStatus}) = _SelectMinutes;

  factory QuestionnaireEvent.validateScreen(QuestionnaireFillStatus fillStatus) =
      _ValidateScreen;

  factory QuestionnaireEvent.lefsInitial(Map<String, DifficultyLevel> initialData) = _LEFSInitial;
  factory QuestionnaireEvent.resetErrors() = _ResetErrors;
}

enum QuestionnaireFillStatus {initial, work, travel, sedentary, recreation, workInitial}
