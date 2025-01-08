import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../../presentation/nested_view/questionnaire/navigator/questionnaire_navigator_screen.dart';
import '../../presentation/simple_view/auth/view/login_screen.dart';
import '../../presentation/simple_view/auth/view/signup_screen.dart';
import '../../presentation/simple_view/dashboard_menu/view/dashboard_menu_screen.dart';
import '../../presentation/simple_view/home/view/home_screen.dart';
import '../../presentation/simple_view/profile/view/profile_screen.dart';
import '../../presentation/simple_view/sit_to_stand/view/sit_to_stand_screen.dart';
import '../../presentation/simple_view/sit_to_stand/view/sit_to_stand_test_start_screen.dart';
import '../../presentation/simple_view/sit_to_stand_result/view/sit_to_stand_result_screen.dart';
import '../../presentation/simple_view/splash/view/splash_screen.dart';
import 'questionnaire_router.dart';
import 'walk_test_router.dart';


part 'app_router.gr.dart';

@AutoRouterConfig(
    replaceInRouteName: 'Screen|Page,Route',
    generateForDir: [
      'lib/presentation/simple_view',
      'lib/presentation/nested_view/questionnaire/navigator'
    ]
)
class AppRouter extends RootStackRouter {
  final WalkTestRouter walkTestRouter;
  final QuestionnaireRouter questionnaireRouter;

  AppRouter({
    required this.walkTestRouter,
    required this.questionnaireRouter}) : super();


  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/splash',
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: '/questionnaire_navigator',
          page: QuestionnaireNavigatorRoute.page,
          children: questionnaireRouter.routes
        ),
        AutoRoute(
          path: '/dashboard_navigation',
          page: DashboardMenuRoute.page,
        ),
        AutoRoute(
          path: '/signup',
          page: SignupRoute.page,
        ),
        AutoRoute(
          path: '/walk_test_navigator',
          page: WalkTestNavigatorRoute.page,
          children: walkTestRouter.routes
        ),
        AutoRoute(
          path: '/home',
          page: HomeRoute.page,
        ),
        AutoRoute(
          path: '/sit_to_stand',
          page: SitToStandRoute.page,
        ),
        AutoRoute(
          path: '/profile',
          page: ProfileRoute.page,
        ),
        AutoRoute(
          path: '/sit_to_stand_test_start',
          page: SitToStandTestStartRoute.page,
        ),
        AutoRoute(
          path: '/sit_to_stand_result',
          page: SitToStandResultRoute.page,
        ),
      ];
}
