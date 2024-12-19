import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../l10n/localizations_utils.dart';
import '../model/questionnaire_model.dart';
import '../validator/questionnaire_validator.dart';

part 'questionnaire_bloc.freezed.dart';
part 'questionnaire_event.dart';
part 'questionnaire_state.dart';

class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState> {
  QuestionnaireBloc() : super(QuestionnaireState.initial()) {
    on<QuestionnaireSubmit>(_onQuestionnaireSubmit);
    on<QuestionnaireEventGenderChanged>(_onQuestionnaireEventGenderChanged);
    on<QuestionnaireEventAgeChanged>(_onQuestionnaireEventAgeChanged);
    on<QuestionnaireEventHeightChanged>(_onQuestionnaireEventHeightChanged);
    on<QuestionnaireEventWeightChanged>(_onQuestionnaireEventWeightChanged);
    on<QuestionnaireEventSmokerStatusChanged>(_onQuestionnaireEventSmokerStatusChanged);
    on<QuestionnaireEventDrinkerStatusChanged>(_onQuestionnaireEventDrinkerStatusChanged);
    on<QuestionnaireEventCholesterolStatusChanged>(_onQuestionnaireEventCholesterolStatusChanged);
    on<QuestionnaireEventBloodSugarStatusChanged>(_onQuestionnaireEventBloodSugarStatusChanged);
  }

  void _onQuestionnaireSubmit(QuestionnaireSubmit event, Emitter<QuestionnaireState> emit) {}

  void _onQuestionnaireEventAgeChanged(
      QuestionnaireEventAgeChanged event, Emitter<QuestionnaireState> emit) {
    String? error = QuestionnaireValidator.validateRequiredText(
        event.age, appLocalizations.ageRequiredErrorText);
    final basicInfo = state.basicInfo.copyWith(age: event.age ?? '');
    final bool isValid = QuestionnaireValidator.validate(basicInfo, state.healthInfo);
    if (!event.shouldValidate) {
      error = null;
    }
    emit(state.copyWith(basicInfo: basicInfo, ageError: error, isFormValid: isValid));
  }

  void _onQuestionnaireEventHeightChanged(
      QuestionnaireEventHeightChanged event, Emitter<QuestionnaireState> emit) {
    String? error = QuestionnaireValidator.validateRequiredText(
        event.height, appLocalizations.heightRequiredErrorText);
    final basicInfo = state.basicInfo.copyWith(height: event.height ?? '');
    final bool isValid = QuestionnaireValidator.validate(basicInfo, state.healthInfo);
    if (!event.shouldValidate) {
      error = null;
    }
    emit(state.copyWith(
      basicInfo: basicInfo,
      heightError: error,
      isFormValid: isValid,
    ));
  }

  void _onQuestionnaireEventWeightChanged(
      QuestionnaireEventWeightChanged event, Emitter<QuestionnaireState> emit) {
    String? error = QuestionnaireValidator.validateRequiredText(
        event.weight, appLocalizations.weightRequiredErrorText);
    final basicInfo = state.basicInfo.copyWith(weight: event.weight ?? '');
    final bool isValid = QuestionnaireValidator.validate(basicInfo, state.healthInfo);
    if (!event.shouldValidate) {
      error = null;
    }
    emit(state.copyWith(
      basicInfo: basicInfo,
      weightError: error,
      isFormValid: isValid,
    ));
  }

  void _onQuestionnaireEventSmokerStatusChanged(
      QuestionnaireEventSmokerStatusChanged event, Emitter<QuestionnaireState> emit) {
    String? error = QuestionnaireValidator.validateRequiredText(
        event.smokerStatus, appLocalizations.smokerStatusRequiredErrorText);
    final healthInfo = state.healthInfo.copyWith(smokerStatus: event.smokerStatus ?? '');
    final bool isValid = QuestionnaireValidator.validate(state.basicInfo, healthInfo);
    if (!event.shouldValidate) {
      error = null;
    }
    emit(state.copyWith(
      healthInfo: healthInfo,
      smokerStatusError: error,
      isFormValid: isValid,
    ));
  }

  void _onQuestionnaireEventDrinkerStatusChanged(
      QuestionnaireEventDrinkerStatusChanged event, Emitter<QuestionnaireState> emit) {
    String? error = QuestionnaireValidator.validateRequiredText(
        event.drinkerStatus, appLocalizations.drinkerStatusRequiredErrorText);
    final healthInfo = state.healthInfo.copyWith(drinkerStatus: event.drinkerStatus ?? '');
    final bool isValid = QuestionnaireValidator.validate(state.basicInfo, healthInfo);
    if (!event.shouldValidate) {
      error = null;
    }
    emit(state.copyWith(
      healthInfo: healthInfo,
      drinkerStatusError: error,
      isFormValid: isValid,
    ));
  }

  void _onQuestionnaireEventCholesterolStatusChanged(
      QuestionnaireEventCholesterolStatusChanged event, Emitter<QuestionnaireState> emit) {
    String? error = QuestionnaireValidator.validateRequiredText(
        event.cholesterolStatus, appLocalizations.cholesterolStatusRequiredErrorText);
    final healthInfo = state.healthInfo.copyWith(cholesterolStatus: event.cholesterolStatus ?? '');
    final bool isValid = QuestionnaireValidator.validate(state.basicInfo, healthInfo);
    if (!event.shouldValidate) {
      error = null;
    }
    emit(state.copyWith(
      healthInfo: healthInfo,
      cholesterolStatusError: error,
      isFormValid: isValid,
    ));
  }

  void _onQuestionnaireEventBloodSugarStatusChanged(
      QuestionnaireEventBloodSugarStatusChanged event, Emitter<QuestionnaireState> emit) {
    String? error = QuestionnaireValidator.validateRequiredText(
        event.bloodSugarStatus, appLocalizations.bloodSugarStatusRequiredErrorText);

    final healthInfo = state.healthInfo.copyWith(bloodSugarStatus: event.bloodSugarStatus ?? '');
    final bool isValid = QuestionnaireValidator.validate(state.basicInfo, healthInfo);
    if (!event.shouldValidate) {
      error = null;
    }
    emit(state.copyWith(
        bloodSugarStatusError: error,
        isFormValid: isValid,
        healthInfo: healthInfo
    ));
  }

  void _onQuestionnaireEventGenderChanged(
      QuestionnaireEventGenderChanged event, Emitter<QuestionnaireState> emit) {
    String? error = QuestionnaireValidator.validateRequiredText(
        event.selectedGender, appLocalizations.heightRequiredErrorText);
    final basicInfo = state.basicInfo.copyWith(gender: event.selectedGender);
    final bool isValid = QuestionnaireValidator.validate(basicInfo, state.healthInfo);
    if (!event.shouldValidate) {
      error = null;
    }
    emit(state.copyWith(
      genderError: error,
      isFormValid: isValid,
      basicInfo: basicInfo,
    ));
  }
}
