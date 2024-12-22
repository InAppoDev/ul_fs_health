import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_colors.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';
import '../../utils/model/text_model.dart';
import '../../utils/widgets/submit_button.dart';
import '../../utils/widgets/test_layout_widget.dart';
import '../../utils/widgets/text_builder_widget.dart';
import '../../walk_test/view/walk_test_note_widget.dart';

@RoutePage()
class SitToStandTestScreen extends StatelessWidget {
  const SitToStandTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SitToStandTestContent();
  }
}

class SitToStandTestContent extends StatelessWidget {
  const SitToStandTestContent({super.key});

  @override
  Widget build(BuildContext context) {
    return TestLayoutWidget(
        headerIcon: Assets.icons.iconSitDownTest.svg(
            colorFilter: const ColorFilter.mode(white, BlendMode.srcIn)
        ),
        headerText: appLocalizations.sitToStandTestTitleText,
        children: [
          TextBuilderWidget(
            placeholders: [
              TextModel(
                text: appLocalizations.sitToDownTestInitialText,
              ),
              TextModel(text: appLocalizations.additionalSitToDownTestText),
              TextModel(text: appLocalizations.textWithNewLine(appLocalizations.testInstructionSitStandThirdPart)),
              TextModel(text: appLocalizations.sitToDownTestDelayText(5))
            ],
          ),
          Gaps.largest.spaceVertical,
          SubmitButton(
              onPressed: () {},
              title: appLocalizations.btnTestStartText.toUpperCase(),
              backgroundColor: ColorScheme.of(context).primary,
              titleColor: white
          ),
          Gaps.largest.spaceVertical,
          WalkTestNoteWidget(
            boldText: appLocalizations.pauseText,
          )
        ]);
  }
}
