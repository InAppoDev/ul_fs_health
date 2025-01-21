import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/gaps.dart';
import '../../../../core/extensions/number_extension.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../l10n/localizations_utils.dart';
import '../../../core/extensions/string_extension.dart';
import '../../../core/router/app_router.dart';
import '../../auth/widgets/auth_guard_widget.dart';
import '../../utils/widgets/simple_app_bar_widget.dart';
import '../../utils/widgets/submit_button.dart';

@RoutePage()
class QuestionnaireInitialScreen extends StatelessWidget {
  const QuestionnaireInitialScreen(
      {super.key, this.shouldAuthenticate = false});

  final bool shouldAuthenticate;
  @override
  Widget build(BuildContext context) {
    return QuestionnaireInitialContent(shouldAuthenticate: shouldAuthenticate);
  }
}

class QuestionnaireInitialContent extends StatelessWidget {
  const QuestionnaireInitialContent(
      {super.key, required this.shouldAuthenticate});

  final bool shouldAuthenticate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBarWidget(
        showBackButton: shouldAuthenticate,
        onInfoPress: () {},
      ),
      body: Center(
        child: AuthGuardWidget(
            isAuthRoute: !shouldAuthenticate,
            child: Center(
              child: Padding(
                padding: (Gaps.largest + Gaps.small).paddingHorizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.medium.spaceVertical,
                    Align(
                        child: Text(appLocalizations.questHeaderTitle,
                            style:
                                header1.copyWith(fontSize: 16, height: 1.5))),
                    (Gaps.medium + Gaps.smaller).spaceVertical,
                    Text(appLocalizations.questInitialHeaderDescription,
                        style: body1, textAlign: TextAlign.justify),
                    Gaps.large.spaceVertical,
                    Text(appLocalizations.questInitialHeaderDescription2,
                        style: body1, textAlign: TextAlign.justify),
                    (Gaps.larger + Gaps.smaller).spaceVertical,
                    Padding(
                        padding: Gaps.larger.paddingHorizontal,
                        child: Text(
                          appLocalizations.gpaqHeaderText,
                          style: header1.copyWith(fontSize: 16, height: 1.5),
                          textAlign: TextAlign.center,
                        )),
                    (Gaps.medium + Gaps.small).spaceVertical,
                    Text(appLocalizations.gpaqDescription,
                        style: body1, textAlign: TextAlign.justify),
                    Gaps.large.spaceVertical,
                    SubmitButton(
                        onPressed: () {
                          context.router.push(GPAQInitialRoute(
                              shouldAuthenticate: shouldAuthenticate));
                        },
                        title: appLocalizations.btnStartText.capitalized,
                        backgroundColor: ColorScheme.of(context).primary,
                        titleColor: ColorScheme.of(context).onPrimary),
                    (Gaps.medium + Gaps.small).spaceVertical,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: appLocalizations.questionnaireInfoTextPart,
                          style: body1.copyWith(
                              fontSize: 12,
                              color: ColorScheme.of(context).primary)),
                      TextSpan(
                          text: appLocalizations.mandatoryText,
                          style: body1.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: ColorScheme.of(context).primary))
                    ])),
                    Gaps.large.spaceVertical,
                    Align(
                        child: Text(appLocalizations.lefsHeaderText,
                            style:
                                header1.copyWith(fontSize: 16, height: 1.5))),
                    (Gaps.medium + Gaps.smaller).spaceVertical,
                    Text(appLocalizations.lefsDescription, style: body1),
                    (Gaps.medium + Gaps.small).spaceVertical,
                    SubmitButton(
                        onPressed: () {
                          context.router.push(LEFSRoute(
                              shouldAuthenticate: shouldAuthenticate));
                        },
                        title: appLocalizations.btnStartText.capitalized,
                        backgroundColor: ColorScheme.of(context).primary,
                        titleColor: ColorScheme.of(context).onPrimary),
                    (Gaps.medium + Gaps.smaller).spaceVertical,
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: appLocalizations.questionnaireInfoTextPart,
                          style: body1.copyWith(color: darkGrey)),
                      TextSpan(
                          text: appLocalizations.optionalText,
                          style: body1.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: lighterGrey))
                    ])),
                    (Gaps.medium + Gaps.smaller).spaceVertical,
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
