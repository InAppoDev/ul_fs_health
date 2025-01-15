part of 'questionnaire_bloc.dart';

@freezed
class QuestionnaireState with _$QuestionnaireState {
  factory QuestionnaireState.initial(
      {@Default(QuestionnaireStatus.initial) QuestionnaireStatus status,
        @Default(QuestionnaireModel.from()) QuestionnaireModel travelData,
        @Default(QuestionnaireModel.from()) QuestionnaireModel workData,
        @Default(SedentaryModel.from()) SedentaryModel sedentaryData,
        @Default(QuestionnaireModel.from()) QuestionnaireModel recreationData,
        bool? hasWorkInitialActivity,
        @Default({}) Map<String, DifficultyLevel> lefsData,
        @Default('') String daysError,
        @Default(false) bool isNextValid,
        String? errorMessage
      }) = _QuestionnaireStateInitial;
}

enum QuestionnaireStatus { initial, loading, failure, success }
