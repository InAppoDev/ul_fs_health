part of 'questionnaire_bloc.dart';

@freezed
class QuestionnaireEvent with _$QuestionnaireEvent {
  factory QuestionnaireEvent.onSubmit() = QuestionnaireSubmit;
}
