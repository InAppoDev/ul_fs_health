import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants/gender.dart';

part 'questionnaire_bloc.freezed.dart';
part 'questionnaire_event.dart';
part 'questionnaire_state.dart';

class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState> {
  QuestionnaireBloc() : super(QuestionnaireState.initial()) {
    on<QuestionnaireSubmit>(_onQuestionnaireSubmit);
  }

  void _onQuestionnaireSubmit(QuestionnaireSubmit event, Emitter<QuestionnaireState> emit) {}
}
