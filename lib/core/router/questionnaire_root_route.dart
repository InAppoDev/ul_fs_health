part of 'app_router.dart';

abstract class QuestionnaireRootRoute {
  static AutoRoute get route => CustomRoute<QuestionnaireInitialRoute>(
      path: '/questionnaire',
      page: const PageInfo.emptyShell('/questionnaire'),
      customRouteBuilder: <T>(context, child, page) {
        return PageRouteBuilder(
            settings: page,
            fullscreenDialog: page.fullscreenDialog,
            pageBuilder: (context, animation, secondaryAnimation) => MultiBlocProvider(
              providers: [
                BlocProvider(create: (_) => QuestionnaireSubmitterBloc(getIt<QuestionnaireRepository>())),
                BlocProvider(create: (_)=> QuestionnaireBloc())
              ],
              child: child,
            ));
      },
      children: [
        CustomRoute<GPAQInitialRoute>(
          path: 'gpaq_initial',
          page: GPAQInitialRoute.page,
        ),
        CustomRoute<GPAQWorkRoute>(
          path: 'gpaq_work',
          page: GPAQWorkRoute.page,
        ),
        CustomRoute<GPAQTravelRoute>(
          path: 'gpaq_travel',
          page: GPAQTravelRoute.page,
        ),
        CustomRoute<GPAQSedentaryRoute>(
          path: 'gpaq_sedentary',
          page: GPAQSedentaryRoute.page,
        ),
        CustomRoute<GPAQRecreationRoute>(
          path: 'gpaq_recreation',
          page: GPAQRecreationRoute.page,
        ),
        CustomRoute<GPAQWorkInitialRoute>(
          path: 'gpaq_work_initial',
          page: GPAQWorkInitialRoute.page,
        ),
        CustomRoute<GPAQTravelInitialRoute>(
          path: 'gpaq_travel_initial',
          page: GPAQTravelInitialRoute.page,
        ),
        CustomRoute<GPAQRecreationInitialRoute>(
          path: 'gpaq_recreate_initial',
          page: GPAQRecreationInitialRoute.page,
        ),
        CustomRoute<GPAQSedentaryInitialRoute>(
          path: 'gpaq_sedentary_initial',
          page: GPAQSedentaryInitialRoute.page,
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
