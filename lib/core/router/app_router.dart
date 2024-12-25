import 'package:auto_route/auto_route.dart';

import '../../presentation/auth/view/login_screen.dart';
import '../../presentation/auth/view/signup_screen.dart';
import '../../presentation/dashboard_menu/view/dashboard_menu_screen.dart';
import '../../presentation/home/view/home_screen.dart';
import '../../presentation/profile/view/profile_screen.dart';
import '../../presentation/questionnaire/view/questionnaire_screen.dart';
import '../../presentation/sit_to_stand/view/sit_to_stand_screen.dart';
import '../../presentation/sit_to_stand/view/sit_to_stand_test_start_screen.dart';
import '../../presentation/splash/view/splash_screen.dart';
import '../../presentation/walk_test/view/walk_test_initial_screen.dart';
import '../../presentation/walk_test/view/walk_test_screen.dart';
import '../../presentation/walk_test_start/view/walk_test_start_screen.dart';

part 'app_router.gr.dart';

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
          path: '/questionnaire',
          page: QuestionnaireRoute.page,
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
          path: '/walk_test',
          page: WalkTestRoute.page,
        ),
        AutoRoute(
          path: '/walk_test_start',
          page: WalkTestStartRoute.page,
        ),
        AutoRoute(
          path: '/walk_test_initial',
          page: WalkTestInitialRoute.page,
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
      ];
}
