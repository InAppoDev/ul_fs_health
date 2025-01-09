part of 'questionnaire_bloc.dart';

@freezed
class QuestionnaireEvent with _$QuestionnaireEvent {
  factory QuestionnaireEvent.onSubmit() = QuestionnaireSubmit;
  factory QuestionnaireEvent.selectModerateActivity(bool isModerateActivity) = _SelectModerateActivity;
  factory QuestionnaireEvent.selectWorkDaysInWeek({int? daysInWeek, required bool shouldValidate}) = _SelectWorkDaysInWeek;
  factory QuestionnaireEvent.validateWorkScreen() = _ValidateWorkScreen;
}
