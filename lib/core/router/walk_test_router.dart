
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../../presentation/nested_view/walk_test/walk_test/view/walk_test_initial_screen.dart';
import '../../presentation/nested_view/walk_test/walk_test/view/walk_test_screen.dart';
import '../../presentation/nested_view/walk_test/walk_test_navigator/view/walk_test_navigator_screen.dart';
import '../../presentation/nested_view/walk_test/walk_test_result/view/walk_test_result_screen.dart';
import '../../presentation/nested_view/walk_test/walk_test_start/view/walk_test_start_screen.dart';

part 'walk_test_router.gr.dart';

@AutoRouterConfig(
    replaceInRouteName: 'Screen|Page,Route',
    generateForDir: ['lib/presentation/nested_view/walk_test']
)
class WalkTestRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: 'walk_test_initial',
      page: WalkTestInitialRoute.page,
      initial: true,
    ),
    AutoRoute(
      path: 'walk_test',
      page: WalkTestRoute.page,
    ),
    AutoRoute(
      path: 'walk_test_start',
      page: WalkTestStartRoute.page,
    ),
    AutoRoute(
      path: 'walk_test_result',
      page: WalkTestResultRoute.page,
    ),
  ];
}
