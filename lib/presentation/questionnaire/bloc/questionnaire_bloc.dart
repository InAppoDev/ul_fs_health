import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../l10n/localizations_utils.dart';
import '../model/questionnaire_model.dart';
import '../model/sedentary_model.dart';
import '../utils/difficulty_level.dart';

part 'questionnaire_bloc.freezed.dart';

part 'questionnaire_event.dart';

part 'questionnaire_state.dart';

class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState> {
  QuestionnaireBloc() : super(QuestionnaireState.initial()) {
    on<_QuestionnaireSubmit>(_onQuestionnaireSubmit);
    on<_SelectActivity>(_onSelectActivity);
    on<_SelectDaysInWeek>(_onSelectWorkDaysInWeek);
    on<_ValidateScreen>(_onValidateWorkScreen);
    on<_SelectHours>(_onSelectWorkHours);
    on<_SelectMinutes>(_onSelectWorkMinutes);
    on<_LEFSInitial>(_onLEFSInitial);
    on<_ResetErrors>(_onResetErrors);
  }

  void _onQuestionnaireSubmit(_QuestionnaireSubmit event, Emitter<QuestionnaireState> emit) {}

  void _onLEFSInitial(_LEFSInitial event, Emitter<QuestionnaireState> emit) {
    emit(state.copyWith(lefsData: event.initialData));
  }

  void _onSelectWorkHours(_SelectHours event, Emitter<QuestionnaireState> emit) {
    switch (event.fillStatus) {
      case QuestionnaireFillStatus.work:
        emit(state.copyWith(workData: state.workData.copyWith(hours: event.hours)));
      case QuestionnaireFillStatus.travel:
        emit(state.copyWith(travelData: state.travelData.copyWith(hours: event.hours)));
      case QuestionnaireFillStatus.recreation:
        emit(state.copyWith(recreationData: state.recreationData.copyWith(hours: event.hours)));
      case QuestionnaireFillStatus.sedentary:
        emit(state.copyWith(sedentaryData: state.sedentaryData.copyWith(hours: event.hours)));
      case QuestionnaireFillStatus.initial:
      case QuestionnaireFillStatus.workInitial:
    }
  }

  void _onSelectWorkMinutes(_SelectMinutes event, Emitter<QuestionnaireState> emit) {
    switch (event.fillStatus) {
      case QuestionnaireFillStatus.work:
        emit(state.copyWith(workData: state.workData.copyWith(minutes: event.minutes)));
      case QuestionnaireFillStatus.travel:
        emit(state.copyWith(travelData: state.travelData.copyWith(minutes: event.minutes)));
      case QuestionnaireFillStatus.recreation:
        emit(state.copyWith(recreationData: state.recreationData.copyWith(minutes: event.minutes)));
      case QuestionnaireFillStatus.sedentary:
        emit(state.copyWith(sedentaryData: state.sedentaryData.copyWith(minutes: event.minutes)));
      case QuestionnaireFillStatus.initial:
      case QuestionnaireFillStatus.workInitial:
    }
  }

  void _onValidateWorkScreen(_ValidateScreen event, Emitter<QuestionnaireState> emit) {
    bool isValid = false;
    switch (event.fillStatus) {
      case QuestionnaireFillStatus.work:
        isValid = state.workData.hasActivity != null && state.workData.daysInWeek != null;
      case QuestionnaireFillStatus.travel:
        isValid = state.travelData.hasActivity != null && state.travelData.daysInWeek != null;
      case QuestionnaireFillStatus.recreation:
        isValid =
            state.recreationData.hasActivity != null && state.recreationData.daysInWeek != null;
      case QuestionnaireFillStatus.sedentary:
      case QuestionnaireFillStatus.initial:
      case QuestionnaireFillStatus.workInitial:
        isValid = state.hasWorkInitialActivity != null;
    }
    emit(state.copyWith(isNextValid: isValid));
  }

  void _onSelectActivity(_SelectActivity event, Emitter<QuestionnaireState> emit) {
    switch (event.fillStatus) {
      case QuestionnaireFillStatus.work:
        final isValid = state.workData.daysInWeek != null;
        emit(state.copyWith(
            workData: state.workData.copyWith(hasActivity: event.hasActivity),
            isNextValid: isValid));
      case QuestionnaireFillStatus.travel:
        final isValid = state.travelData.daysInWeek != null;
        emit(state.copyWith(
            travelData: state.travelData.copyWith(hasActivity: event.hasActivity),
            isNextValid: isValid));
      case QuestionnaireFillStatus.recreation:
        final isValid = state.recreationData.daysInWeek != null;
        emit(state.copyWith(
            recreationData: state.recreationData.copyWith(hasActivity: event.hasActivity),
            isNextValid: isValid));
      case QuestionnaireFillStatus.sedentary:
      case QuestionnaireFillStatus.initial:
      case QuestionnaireFillStatus.workInitial:;
      emit(state.copyWith(
          hasWorkInitialActivity: event.hasActivity,
          isNextValid: true));
    }
  }

  void _onSelectWorkDaysInWeek(_SelectDaysInWeek event, Emitter<QuestionnaireState> emit) {
    switch (event.fillStatus) {
      case QuestionnaireFillStatus.work:
        final bool isValid = state.workData.hasActivity != null && event.daysInWeek != null;
        String error = event.daysInWeek == null ? appLocalizations.gpaqDaysErrorText : '';
        if (!event.shouldValidate) {
          error = '';
        }
        emit(state.copyWith(
            workData: state.workData.copyWith(daysInWeek: event.daysInWeek),
            isNextValid: isValid,
            daysError: error));
      case QuestionnaireFillStatus.travel:
        final bool isValid = state.travelData.hasActivity != null && event.daysInWeek != null;
        String error = event.daysInWeek == null ? appLocalizations.gpaqDaysErrorText : '';
        if (!event.shouldValidate) {
          error = '';
        }
        emit(state.copyWith(
            travelData: state.travelData.copyWith(daysInWeek: event.daysInWeek),
            isNextValid: isValid,
            daysError: error));
      case QuestionnaireFillStatus.recreation:
        final bool isValid = state.recreationData.hasActivity != null && event.daysInWeek != null;
        String error = event.daysInWeek == null ? appLocalizations.gpaqDaysErrorText : '';
        if (!event.shouldValidate) {
          error = '';
        }
        emit(state.copyWith(
            recreationData: state.recreationData.copyWith(daysInWeek: event.daysInWeek),
            isNextValid: isValid,
            daysError: error));
      case QuestionnaireFillStatus.sedentary:
      case QuestionnaireFillStatus.initial:
      case QuestionnaireFillStatus.workInitial:
    }
  }

  void _onResetErrors(_ResetErrors event, Emitter<QuestionnaireState> emit) {
    emit(state.copyWith(daysError: ''));
  }
}
