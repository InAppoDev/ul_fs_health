import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../l10n/localizations_utils.dart';

part 'questionnaire_bloc.freezed.dart';
part 'questionnaire_event.dart';
part 'questionnaire_state.dart';

class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState> {
  QuestionnaireBloc() : super(QuestionnaireState.initial()) {
    on<QuestionnaireSubmit>(_onQuestionnaireSubmit);
    on<_SelectModerateActivity>(_onSelectModerateActivity);
    on<_SelectWorkDaysInWeek>(_onSelectWorkDaysInWeek);
    on<_ValidateWorkScreen>(_onValidateWorkScreen);
  }

  void _onQuestionnaireSubmit(QuestionnaireSubmit event, Emitter<QuestionnaireState> emit) {}

  void _onValidateWorkScreen(_ValidateWorkScreen event, Emitter<QuestionnaireState> emit) {
    final bool isValid = state.isModerateActivity != null && state.workDaysInWeek != null;
    emit(state.copyWith(isNextValid: isValid));
  }

  void _onSelectModerateActivity(_SelectModerateActivity event, Emitter<QuestionnaireState> emit) {
    final bool isValid = state.workDaysInWeek != null;
    emit(state.copyWith(isModerateActivity: event.isModerateActivity, isNextValid: isValid));
  }

  void _onSelectWorkDaysInWeek(_SelectWorkDaysInWeek event, Emitter<QuestionnaireState> emit) {
    final bool isValid = state.isModerateActivity != null && event.daysInWeek != null;
    String error = event.daysInWeek == null ? appLocalizations.gpaqWorkDaysErrorText : '';
    if (!event.shouldValidate) {
      error = '';
    }
    emit(state.copyWith(workDaysInWeek: event.daysInWeek, workDaysError: error, isNextValid: isValid));
  }
}
