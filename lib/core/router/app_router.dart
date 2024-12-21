import 'package:auto_route/auto_route.dart';

import '../../presentation/auth/view/login_screen.dart';
import '../../presentation/auth/view/signup_screen.dart';
import '../../presentation/dashboard_menu/view/dashboard_menu_screen.dart';
import '../../presentation/home/view/home_screen.dart';
import '../../presentation/questionnaire/view/questionnaire_screen.dart';
import '../../presentation/walk_test/view/walk_test_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,
          initial: true
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
          path: '/walkTest',
          page: WalkTestRoute.page,
        ),
        AutoRoute(
          path: '/home',
          page: HomeRoute.page,
        ),
      ];

}
