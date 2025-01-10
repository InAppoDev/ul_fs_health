import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/gaps.dart';
import '../../../../../core/extensions/number_extension.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../l10n/localizations_utils.dart';
import '../../../../core/router/app_router.dart';
import '../../../auth/widgets/auth_guard_widget.dart';
import '../../../utils/widgets/row_actions_widget.dart';
import '../../../utils/widgets/simple_app_bar_widget.dart';
import '../../bloc/questionnaire_bloc.dart';

@RoutePage()
class GPAQWorkInitialScreen extends StatelessWidget {
  const GPAQWorkInitialScreen({super.key, this.shouldAuthenticate = false});

  final bool shouldAuthenticate;

  @override
  Widget build(BuildContext context) {
    context.read<QuestionnaireBloc>().add(QuestionnaireEvent.validateScreen(QuestionnaireFillStatus.workInitial));
    return GPAQWorkInitialContent(shouldAuthenticate: shouldAuthenticate);
  }
}

class GPAQWorkInitialContent extends StatelessWidget {
  const GPAQWorkInitialContent({super.key, required this.shouldAuthenticate});

  final bool shouldAuthenticate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: RowActionsWidget(
          isRightValid: context.watch<QuestionnaireBloc>().state.isNextValid,
          contentPadding: Gaps.largest.paddingAll,
          leftTitle: appLocalizations.btnBackActionText,
          rightTitle: appLocalizations.btnNextActionText,
          onLeftPress: () => context.router.maybePop(),
          onRightPress: () => context.router.push(GPAQWorkRoute(shouldAuthenticate: shouldAuthenticate)),
          leftTitleColor: ColorScheme.of(context).onSecondary,
          rightTitleColor: ColorScheme.of(context).onPrimary,
          leftBackgroundColor: ColorScheme.of(context).secondary,
          rightBackgroundColor: ColorScheme.of(context).primary),
      appBar: SimpleAppBarWidget(
        showBackButton: shouldAuthenticate,
        onInfoPress: () {},
      ),
      body: SingleChildScrollView(
        child: Center(
          child: AuthGuardWidget(
              isAuthRoute: !shouldAuthenticate,
              child: Center(
                child: Padding(
                  padding: (Gaps.largest + Gaps.small).paddingHorizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gaps.large.spaceVertical,
                      Text(appLocalizations.gpaqWorkHeaderText,
                          style: header1.copyWith(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              height: 1.4,
                              letterSpacing: -2)),
                      Gaps.larger.spaceVertical,
                      Text(appLocalizations.gpaqWorkDescription,
                          style: body1, textAlign: TextAlign.justify),
                      Gaps.medium.spaceVertical,
                      RowActionsWidget(
                          leftTitle: appLocalizations.btnActionYes,
                          rightTitle: appLocalizations.btnActionNo,
                          onLeftPress: () => context
                              .read<QuestionnaireBloc>()
                              .add(QuestionnaireEvent.selectActivity(hasActivity: true, fillStatus: QuestionnaireFillStatus.workInitial)),
                          onRightPress: () => context
                              .read<QuestionnaireBloc>()
                              .add(QuestionnaireEvent.selectActivity(hasActivity: false, fillStatus: QuestionnaireFillStatus.workInitial)),
                          leftTitleColor:
                          context.watch<QuestionnaireBloc>().state.hasWorkInitialActivity == true
                              ? ColorScheme.of(context).onPrimary
                              : ColorScheme.of(context).onSecondary,
                          rightTitleColor:
                          context.watch<QuestionnaireBloc>().state.hasWorkInitialActivity == false
                              ? ColorScheme.of(context).onPrimary
                              : ColorScheme.of(context).onSecondary,
                          leftBackgroundColor:
                          context.watch<QuestionnaireBloc>().state.hasWorkInitialActivity == true
                              ? ColorScheme.of(context).primary
                              : ColorScheme.of(context).secondary,
                          rightBackgroundColor:
                          context.watch<QuestionnaireBloc>().state.hasWorkInitialActivity == false
                              ? ColorScheme.of(context).primary
                              : ColorScheme.of(context).secondary),
                      if (context.watch<QuestionnaireBloc>().state.hasWorkInitialActivity == null) ...[
                        Gaps.medium.spaceVertical,
                        Text(appLocalizations.gpaqRequiredChoice,
                            style: body1.copyWith(color: ColorScheme.of(context).error)),
                        Gaps.medium.spaceVertical,
                      ],
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
