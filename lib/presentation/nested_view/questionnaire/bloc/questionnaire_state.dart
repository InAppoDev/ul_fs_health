part of 'questionnaire_bloc.dart';

@freezed
class QuestionnaireState with _$QuestionnaireState {
  factory QuestionnaireState.initial(
      {@Default(QuestionnaireStatus.initial) QuestionnaireStatus status}) = _QuestionnaireStateInitial;
}

enum QuestionnaireStatus { initial, loading, failure, success }
