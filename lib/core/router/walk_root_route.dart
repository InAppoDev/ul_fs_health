part of 'app_router.dart';

abstract class WalkRootRoute {
  static AutoRoute get route => CustomRoute<WalkTestInitialRoute>(
          path: '/walk_test_navigation',
          page: const PageInfo.emptyShell('/walk_test_navigation'),
          customRouteBuilder: <T>(context, child, page) => PageRouteBuilder(
              settings: page,
              fullscreenDialog: page.fullscreenDialog,
              pageBuilder: (pageContext, animation, secondaryAnimation) => BlocProvider(
                    create: (_) => WalkTestBloc(walkRepository: getIt<WalkRepository>()),
                    child: child,
                  )),
          children: [
            CustomRoute<WalkTestRoute>(
              path: 'walk_test',
              page: WalkTestRoute.page,
              durationInMilliseconds: 300,
            ),
            CustomRoute<WalkTestStartRoute>(
              path: 'walk_test_start',
              page: WalkTestStartRoute.page,
              durationInMilliseconds: 300,
            ),
            CustomRoute<WalkTestInitialRoute>(
              initial: true,
              path: 'walk_test_initial',
              page: WalkTestInitialRoute.page,
              durationInMilliseconds: 300,
            ),
            CustomRoute<WalkTestResultRoute>(
              path: 'walk_test_result',
              page: WalkTestResultRoute.page,
              durationInMilliseconds: 300,
            )
          ]);
}
