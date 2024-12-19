part of 'questionnaire_bloc.dart';

@freezed
class QuestionnaireState with _$QuestionnaireState {
  factory QuestionnaireState.initial({
    @Default(QuestionnaireStatus.initial) QuestionnaireStatus status,

    @Default(null) String? selectedGender,
    @Default(BasicInfo.fromValues()) BasicInfo basicInfo,
    @Default(HealthInfo.fromValues()) HealthInfo healthInfo,
    @Default(null) String? genderError,
    @Default(null) String? ageError,
    @Default(null) String? heightError,
    @Default(null) String? weightError,
    @Default(null) String? smokerStatusError,
    @Default(null) String? drinkerStatusError,
    @Default(null) String? cholesterolStatusError,
    @Default(null) String? bloodSugarStatusError,
    @Default(false) bool isFormValid
  }) = _QuestionnaireStateInitial;
}

enum QuestionnaireStatus {initial, loading, failure, success}