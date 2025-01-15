part of 'questionnaire_submitter_bloc.dart';

@freezed
class QuestionnaireSubmitterState with _$QuestionnaireSubmitterState {
  factory QuestionnaireSubmitterState.initial({
    @Default(QuestionnaireSubmitterStatus.initial) QuestionnaireSubmitterStatus status,
    String? errorMessage,
  }) = _Initial;
}

enum QuestionnaireSubmitterStatus { initial, loading, failure, success }
