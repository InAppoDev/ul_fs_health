part of 'app_router.dart';

abstract class WalkRootRoute {
  static AutoRoute get route =>
    CustomRoute<WalkTestInitialRoute>(
        path: '/walk_test',
        page: WalkTestInitialRoute.page,
        customRouteBuilder: <T>(context, child, page) {
          return PageRouteBuilder(
              settings: page,
              fullscreenDialog: page.fullscreenDialog,
              pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
                  create: (_)=> WalkTestBloc(),
                  child: child,
              ));
        },
        children: [
          CustomRoute<WalkTestRoute>(
            path: 'walk_test',
            page: WalkTestRoute.page,
          ),
          CustomRoute<WalkTestStartRoute>(
            path: 'walk_test_start',
            page: WalkTestStartRoute.page,
          ),
          CustomRoute<WalkTestInitialRoute>(
            initial: true,
            path: 'walk_test_initial',
            page: WalkTestInitialRoute.page,
          ),
          CustomRoute<WalkTestResultRoute>(
            path: 'walk_test_result',
            page: WalkTestResultRoute.page,
          )
        ]
    );
}
