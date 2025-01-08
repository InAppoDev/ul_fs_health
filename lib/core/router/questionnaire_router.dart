import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../../presentation/nested_view/questionnaire/view/gpaq/view/gpaq_initial_screen.dart';
import '../../presentation/nested_view/questionnaire/view/lefs/view/lefs_screen.dart';
import '../../presentation/nested_view/questionnaire/view/questionnaire_initial_screen.dart';

part 'questionnaire_router.gr.dart';

@AutoRouterConfig(
    replaceInRouteName: 'Screen|Page,Route',
    generateForDir: ['lib/presentation/nested_view/questionnaire/view']
)
class QuestionnaireRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: 'lefs',
      page: LEFSRoute.page,
    ),
    AutoRoute(
      path: 'questionnaire',
      initial: true,
      page: QuestionnaireInitialRoute.page,
    ),
    AutoRoute(
      path: 'gpaq_initial',
      page: GPAQInitialRoute.page,
    ),

  ];
}
