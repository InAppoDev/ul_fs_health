import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extensions/context_extension.dart';
import '../../../core/mixins/listenable_widget_mixin.dart';
import '../bloc/submitter/questionnaire_submitter_bloc.dart';

class QuestionnaireWidget extends StatelessWidget
    with ListenableWidgetMixin<QuestionnaireSubmitterBloc, QuestionnaireSubmitterState> {
  const QuestionnaireWidget({super.key, required this.child, required this.onNavigate});

  final Widget child;
  final void Function(BuildContext) onNavigate;

  @override
  Widget build(BuildContext context) {
    return withBlocListener(child:  child);
  }

  @override
  bool isError(QuestionnaireSubmitterState state) {
    return state.status == QuestionnaireSubmitterStatus.failure;
  }

  @override
  void onError(BuildContext context, QuestionnaireSubmitterState state) {
    context.showSnackBarMessage(state.errorMessage ?? '');
  }

  @override
  void onReset(BuildContext context, QuestionnaireSubmitterState state) {
    context.read<QuestionnaireSubmitterBloc>().add(QuestionnaireSubmitterEvent.reset());
  }

  @override
  void onSuccess(BuildContext context, QuestionnaireSubmitterState state) {
    onNavigate(context);
  }

  @override
  bool isSuccess(QuestionnaireSubmitterState state) {
    return state.status == QuestionnaireSubmitterStatus.success;
  }
}
