part of 'app_router.dart';

abstract class QuestionnaireRootRoute {
  static AutoRoute get route => CustomRoute<QuestionnaireInitialRoute>(
      path: '/questionnaire',
      page: QuestionnaireInitialRoute.page,
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
        CustomRoute<GPAQInitialRoute>(
          path: 'gpaq_initial',
          page: GPAQInitialRoute.page,
        ),
        CustomRoute<LEFSRoute>(
          path: 'lefs',
          page: LEFSRoute.page,
        ),
        CustomRoute<QuestionnaireInitialRoute>(
          path: 'questionnaire',
          page: QuestionnaireInitialRoute.page,
        )
      ]
  );
}