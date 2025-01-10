import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/auth/view/login_screen.dart';
import '../../presentation/auth/view/signup_screen.dart';
import '../../presentation/dashboard_menu/view/dashboard_menu_screen.dart';
import '../../presentation/home/view/home_screen.dart';
import '../../presentation/profile/view/profile_screen.dart';
import '../../presentation/questionnaire/bloc/questionnaire_bloc.dart';
import '../../presentation/questionnaire/view/gpaq/gpaq_initial_screen.dart';
import '../../presentation/questionnaire/view/gpaq/gpaq_recreation_initial_screen.dart';
import '../../presentation/questionnaire/view/gpaq/gpaq_recreation_screen.dart';
import '../../presentation/questionnaire/view/gpaq/gpaq_sedentary_initial_screen.dart';
import '../../presentation/questionnaire/view/gpaq/gpaq_sedentary_screen.dart';
import '../../presentation/questionnaire/view/gpaq/gpaq_travel_initial_screen.dart';
import '../../presentation/questionnaire/view/gpaq/gpaq_travel_screen.dart';
import '../../presentation/questionnaire/view/gpaq/gpaq_work_initial_screen.dart';
import '../../presentation/questionnaire/view/gpaq/gpaq_work_screen.dart';
import '../../presentation/questionnaire/view/lefs/lefs_screen.dart';
import '../../presentation/questionnaire/view/questionnaire_initial_screen.dart';
import '../../presentation/sit_to_stand/view/sit_to_stand_screen.dart';
import '../../presentation/sit_to_stand/view/sit_to_stand_test_start_screen.dart';
import '../../presentation/sit_to_stand_result/view/sit_to_stand_result_screen.dart';
import '../../presentation/splash/view/splash_screen.dart';
import '../../presentation/walk_test/bloc/walk_test_bloc.dart';
import '../../presentation/walk_test/view/walk_test_initial_screen.dart';
import '../../presentation/walk_test/view/walk_test_screen.dart';
import '../../presentation/walk_test_result/view/walk_test_result_screen.dart';
import '../../presentation/walk_test_start/view/walk_test_start_screen.dart';

part 'app_router.gr.dart';
part 'walk_root_route.dart';
part 'questionnaire_root_route.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
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
          path: '/dashboard_navigation',
          page: DashboardMenuRoute.page,
        ),
        AutoRoute(
          path: '/signup',
          page: SignupRoute.page,
        ),
        WalkRootRoute.route,
        QuestionnaireRootRoute.route,
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
