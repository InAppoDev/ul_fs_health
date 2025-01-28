import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/walk_result_entity.dart';
import '../../../domain/repositories/user_repository.dart';
import '../../../domain/repositories/walk_repository.dart';
import '../../../l10n/localizations_utils.dart';

part 'walk_test_event.dart';
part 'walk_test_state.dart';
part 'walk_test_bloc.freezed.dart';

class WalkTestBloc extends Bloc<WalkTestEvent, WalkTestState> {
  WalkTestBloc({required this.walkRepository}) : super(const _Initial()) {
    on<_WalkTestSelect>(_onWalkTestSelect);
    on<_GetWalkResultEvent>(_onGetWalkTestResult);
    on<_SaveWalkResultEvent>(_onSaveResults);
    on<_ResetAfterSubmit>(_onResetAfterSubmit);
  }

  final WalkRepository walkRepository;

  Future<void> _onResetAfterSubmit(_ResetAfterSubmit event, Emitter<WalkTestState> emit) async {
    emit(state.copyWith(status: WalkTestStatus.initial));
  }

  Future<void> _onWalkTestSelect(
      _WalkTestSelect event, Emitter<WalkTestState> emit) async {
    bool isValid = false;
    if (event.selectedLength != null) {
      isValid = true;
    }
    String? error = validate(event.selectedLength);
    if (!event.shouldValidate) {
      error = null;
    }

    emit(state.copyWith(
        selectedLength: event.selectedLength,
        isValid: isValid,
        errorText: error));
  }

  String? validate(double? value) {
    if (value == null) {
      return appLocalizations.walkSelectLengthErrorText;
    }
    return null;
  }

  Future<void> _onSaveResults(_SaveWalkResultEvent event, Emitter<WalkTestState> emit) async {
    emit(state.copyWith(status: WalkTestStatus.loading));
    try {
      await walkRepository.saveWalkResults(
          userId: event.userId,
          date: event.date,
          distance: event.distance,
          length: event.length,
          averageSpeed: event.averageSpeed);
      emit(state.copyWith(status: WalkTestStatus.success));
    } catch (e) {
      emit(state.copyWith(status: WalkTestStatus.failure, errorText: e.toString()));
    }
  }

  Future<void> _onGetWalkTestResult(
      _GetWalkResultEvent event, Emitter<WalkTestState> emit) async {
    emit(state.copyWith(status: WalkTestStatus.loading));
    try {
      final results = await walkRepository.getWalkResults(userId: event.userId);
      emit(state.copyWith(
        status: WalkTestStatus.success,
        walkResults: results.isEmpty ? [] : results,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: WalkTestStatus.failure,
        errorText: e.toString(),
      ));
    }
  }
}
