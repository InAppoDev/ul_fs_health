part of 'app_router.dart';

abstract class QuestionnaireRootRoute {
  static AutoRoute get route => CustomRoute<QuestionnaireInitialRoute>(
      path: '/questionnaire',
      page: const PageInfo.emptyShell('/questionnaire'),
      customRouteBuilder: <T>(context, child, page) {
        return PageRouteBuilder(
            settings: page,
            fullscreenDialog: page.fullscreenDialog,
            pageBuilder: (context, animation, secondaryAnimation) => BlocProvider(
              create: (_)=> QuestionnaireBloc(),
              child: child,
            ));
      },
      children: [
        CustomRoute<GPAQInitialRoute>(
          path: 'gpaq_initial',
          page: GPAQInitialRoute.page,
        ),
        CustomRoute<GPAQInitialRoute>(
          path: 'gpaq_initial',
          page: GPAQTravelRoute.page,
        ),
        CustomRoute<GPAQWorkRoute>(
          path: 'gpaq_work',
          page: GPAQWorkRoute.page,
        ),
        CustomRoute<LEFSRoute>(
          path: 'lefs',
          page: LEFSRoute.page,
        ),
        CustomRoute<QuestionnaireInitialRoute>(
          path: 'questionnaire',
          page: QuestionnaireInitialRoute.page,
          initial: true
        )
      ]
  );
}