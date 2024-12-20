import 'package:auto_route/auto_route.dart';

import '../../presentation/auth/view/login_screen.dart';
import '../../presentation/auth/view/signup_screen.dart';
import '../../presentation/home/view/home_screen.dart';
import '../../presentation/questionnaire/view/questionnaire_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/login',
          page: LoginRoute.page,

        ),
        AutoRoute(
          path: '/questionnaire',
          page: QuestionnaireRoute.page,
          initial: true,

        ),
        AutoRoute(
          path: '/signup',
          page: SignupRoute.page,

        ),
        AutoRoute(
          path: '/home',
          page: HomeRoute.page,
        ),
      ];
}
