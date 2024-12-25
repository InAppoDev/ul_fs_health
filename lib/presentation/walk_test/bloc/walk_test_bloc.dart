import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../l10n/localizations_utils.dart';

part 'walk_test_event.dart';
part 'walk_test_state.dart';
part 'walk_test_bloc.freezed.dart';

class WalkTestBloc extends Bloc<WalkTestEvent, WalkTestState> {
  WalkTestBloc() : super(const _Initial()) {
    on<_WalkTestSelect>(_onWalkTestSelect);
  }

  Future<void> _onWalkTestSelect(_WalkTestSelect event, Emitter<WalkTestState> emit) async {
    bool isValid = false;
    if (event.selectedLength != null && event.selectedLength!.isNotEmpty) {
      isValid = true;
    }
    emit(state.copyWith(selectedLength: event.selectedLength, isValid: isValid));
  }

}