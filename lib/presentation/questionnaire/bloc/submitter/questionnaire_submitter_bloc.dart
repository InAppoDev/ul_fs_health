import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/questionnaire/questionnaire_entity.dart';
import '../../../../domain/repositories/questionnaire_repository.dart';
import '../../model/questionnaire_model.dart';
import '../../model/sedentary_model.dart';
import '../../utils/difficulty_level.dart';

part 'questionnaire_submitter_event.dart';

part 'questionnaire_submitter_state.dart';

part 'questionnaire_submitter_bloc.freezed.dart';

class QuestionnaireSubmitterBloc
    extends Bloc<QuestionnaireSubmitterEvent, QuestionnaireSubmitterState> {
  QuestionnaireSubmitterBloc(this.questionnaireRepository) : super(_Initial()) {
    on<_SubmitWork>(_onSubmitWork);
    on<_SubmitWorkInitial>(_onSubmitWorkInitial);
    on<_SubmitLEFS>(_onSubmitLEFS);
    on<_SubmitTravel>(_onSubmitTravel);
    on<_SubmitSedentary>(_onSubmitSedentary);
    on<_SubmitRecreation>(_onSubmitRecreation);
    on<_Reset>(_onReset);
  }

  final QuestionnaireRepository questionnaireRepository;

  void _onReset(_Reset event, Emitter<QuestionnaireSubmitterState> emit) {
    emit(_Initial());
  }

  Future<void> _onSubmitWork(_SubmitWork event, Emitter<QuestionnaireSubmitterState> emit) async {
    emit(state.copyWith(status: QuestionnaireSubmitterStatus.loading));
    try {
      await questionnaireRepository.storeGPAQWorkData(
          entity: QuestionnaireEntity(
              workData: WorkDataEntity(
                  hours: event.workData.hours,
                  minutes: event.workData.minutes,
                  hasActivity: event.workData.hasActivity,
                  daysInWeek: event.workData.daysInWeek)));
      emit(state.copyWith(status: QuestionnaireSubmitterStatus.success));
    } catch (e) {
      emit(
          state.copyWith(status: QuestionnaireSubmitterStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onSubmitWorkInitial(
      _SubmitWorkInitial event, Emitter<QuestionnaireSubmitterState> emit) async {
    emit(state.copyWith(status: QuestionnaireSubmitterStatus.loading));
    try {
      await questionnaireRepository.storeGPAQWorkData(
          entity:
              QuestionnaireEntity(workData: WorkDataEntity(isVigorousActivity: event.hasActivity)));

      emit(state.copyWith(status: QuestionnaireSubmitterStatus.success));
      print("JJJJJ");

    } catch (e) {
      emit(
          state.copyWith(status: QuestionnaireSubmitterStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onSubmitTravel(
      _SubmitTravel event, Emitter<QuestionnaireSubmitterState> emit) async {
    emit(state.copyWith(status: QuestionnaireSubmitterStatus.loading));
    try {
      await questionnaireRepository.storeGPAQWorkData(
          entity: QuestionnaireEntity(
              recreateData: QuestionnaireDataEntity(
                  daysInWeek: event.travelData.daysInWeek ?? 0,
                  hasActivity: event.travelData.hasActivity ?? false,
                  hours: event.travelData.hours,
                  minutes: event.travelData.minutes)));
      emit(state.copyWith(status: QuestionnaireSubmitterStatus.success));
    } catch (e) {
      emit(
          state.copyWith(status: QuestionnaireSubmitterStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onSubmitRecreation(
      _SubmitRecreation event, Emitter<QuestionnaireSubmitterState> emit) async {
    emit(state.copyWith(status: QuestionnaireSubmitterStatus.loading));
    try {
      await questionnaireRepository.storeGPAQWorkData(
          entity: QuestionnaireEntity(
              recreateData: QuestionnaireDataEntity(
                  daysInWeek: event.recreationData.daysInWeek ?? 0,
                  hasActivity: event.recreationData.hasActivity ?? false,
                  hours: event.recreationData.hours,
                  minutes: event.recreationData.minutes)));
      emit(state.copyWith(status: QuestionnaireSubmitterStatus.success));
    } catch (e) {
      emit(
          state.copyWith(status: QuestionnaireSubmitterStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onSubmitSedentary(
      _SubmitSedentary event, Emitter<QuestionnaireSubmitterState> emit) async {
    emit(state.copyWith(status: QuestionnaireSubmitterStatus.loading));
    try {
      await questionnaireRepository.storeGPAQSedentaryData(
          entity: QuestionnaireEntity(
              sedentaryData: SedentaryDataEntity(
        hours: event.sedentaryData.hours,
        minutes: event.sedentaryData.minutes,
      )));
      emit(state.copyWith(status: QuestionnaireSubmitterStatus.success));
    } catch (e) {
      emit(
          state.copyWith(status: QuestionnaireSubmitterStatus.failure, errorMessage: e.toString()));
    }
  }

  Future<void> _onSubmitLEFS(_SubmitLEFS event, Emitter<QuestionnaireSubmitterState> emit) async {
    emit(state.copyWith(status: QuestionnaireSubmitterStatus.loading));
    try {
      await questionnaireRepository.storeLEFSData(
          entity: QuestionnaireEntity(lefsData: LEFSDataEntity(data: event.lefsData)));
      emit(state.copyWith(status: QuestionnaireSubmitterStatus.success));
    } catch (e) {
      emit(
          state.copyWith(status: QuestionnaireSubmitterStatus.failure, errorMessage: e.toString()));
    }
  }
}
