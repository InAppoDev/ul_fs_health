part of 'questionnaire_bloc.dart';

@freezed
class QuestionnaireEvent with _$QuestionnaireEvent {
  factory QuestionnaireEvent.onSubmit() = QuestionnaireSubmit;
  factory QuestionnaireEvent.onAgeChanged({
    String? age,
    @Default(true) bool shouldValidate
  }) = QuestionnaireEventAgeChanged;
  factory QuestionnaireEvent.onHeightChanged({
    String? height,
    @Default(true) bool shouldValidate
  }) = QuestionnaireEventHeightChanged;
  factory QuestionnaireEvent.onWeightChanged({
    String? weight,
    @Default(true) bool shouldValidate
  }) = QuestionnaireEventWeightChanged;
  factory QuestionnaireEvent.onDrinkerStatusChanged({
    String? drinkerStatus,
    @Default(true) bool shouldValidate
  }) = QuestionnaireEventDrinkerStatusChanged;
  factory QuestionnaireEvent.onSmokerStatusChanged({
    String? smokerStatus,
    @Default(true) bool shouldValidate
  }) = QuestionnaireEventSmokerStatusChanged;
  factory QuestionnaireEvent.onCholesterolStatusChanged({
    String? cholesterolStatus,
    @Default(true) bool shouldValidate
  }) = QuestionnaireEventCholesterolStatusChanged;
  factory QuestionnaireEvent.onBloodSugarStatusChanged({
    String? bloodSugarStatus,
    @Default(true) bool shouldValidate
  }) = QuestionnaireEventBloodSugarStatusChanged;
  factory QuestionnaireEvent.onGenderChanged({
    String? selectedGender,
    @Default(true) bool shouldValidate
  }) = QuestionnaireEventGenderChanged;
}