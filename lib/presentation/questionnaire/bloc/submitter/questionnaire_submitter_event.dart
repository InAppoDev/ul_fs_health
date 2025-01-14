part of 'questionnaire_submitter_bloc.dart';

@freezed
class QuestionnaireSubmitterEvent with _$QuestionnaireSubmitterEvent {
  factory QuestionnaireSubmitterEvent.submitWork({required QuestionnaireModel workData}) = _SubmitWork;
  factory QuestionnaireSubmitterEvent.submitWorkInitial({required bool hasActivity}) = _SubmitWorkInitial;
  factory QuestionnaireSubmitterEvent.submitTravel({required QuestionnaireModel travelData}) = _SubmitTravel;
  factory QuestionnaireSubmitterEvent.submitRecreation({required QuestionnaireModel recreationData}) = _SubmitRecreation;
  factory QuestionnaireSubmitterEvent.submitSedentary({required SedentaryModel sedentaryData}) = _SubmitSedentary;
  factory QuestionnaireSubmitterEvent.submitLEFS({required Map<String, DifficultyLevel> lefsData}) = _SubmitLEFS;
  factory QuestionnaireSubmitterEvent.reset() = _Reset;
}