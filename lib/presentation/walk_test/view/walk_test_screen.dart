import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';
import '../../utils/widgets/submit_button.dart';
import '../../utils/widgets/test_layout_widget.dart';

@RoutePage()
class WalkTestScreen extends StatelessWidget {
  const WalkTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const WalkTestContent();
  }
}

class WalkTestContent extends StatelessWidget {
  const WalkTestContent({super.key});

  @override
  Widget build(BuildContext context) {
    return TestLayoutWidget(
        headerIcon: Assets.icons.iconWalkTest.svg(
          colorFilter: const ColorFilter.mode(white, BlendMode.srcIn)
        ),
        headerText: appLocalizations.walkTestTitleText,
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(text: appLocalizations.testInstructionFirstPartText, style: body1),
            TextSpan(
                text: appLocalizations.testStartText,
                style: body1.copyWith(
                    color: ColorScheme.of(context).primary, fontWeight: FontWeight.w700)),
            TextSpan(text: appLocalizations.testInstructionSecondPartText, style: body1),
            TextSpan(
                text: appLocalizations.testInstructionBoldText,
                style: body1.copyWith(fontWeight: FontWeight.w700)),
            TextSpan(
                text: appLocalizations.testInstructionThirdPart,
                style: body1),
          ])),
          Gaps.large.spaceVertical,
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: appLocalizations.testInstructionAlertFirstText,
                  style: body1
                ),
                TextSpan(
                  text: appLocalizations.walkTestDelayText(6),
                  style: body1,
                ),
                TextSpan(
                  text: appLocalizations.testInstructionBoldLowerText,
                  style: body1.copyWith(fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: appLocalizations.testInstructionAlertSecondText,
                  style: body1
                ),
              ]
            ),
          ),
          Gaps.largest.spaceVertical,
          SubmitButton(
              onPressed: () {},
              title: appLocalizations.btnTestStartText.toUpperCase(),
              backgroundColor: ColorScheme.of(context).primary,
              titleColor: white
          ),
          Gaps.largest.spaceVertical,
          RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                      text: appLocalizations.walkTestAdditionalInfoFirstPartText,
                      style: body1.copyWith(color: lighterGrey)
                  ),
                  TextSpan(
                    text: appLocalizations.pauseText,
                    style: body1.copyWith(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                      text: appLocalizations.walkTestAdditionalInformationSecondPartText,
                      style: body1.copyWith(color: lighterGrey)
                  ),
                ]
            ),
          ),
        ]);
  }
}
