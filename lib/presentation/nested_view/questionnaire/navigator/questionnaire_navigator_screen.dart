import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/questionnaire_bloc.dart';

@RoutePage()
class QuestionnaireNavigatorScreen extends StatelessWidget {
  const QuestionnaireNavigatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => QuestionnaireBloc(),
        child: const AutoRouter()
    );
  }
}
