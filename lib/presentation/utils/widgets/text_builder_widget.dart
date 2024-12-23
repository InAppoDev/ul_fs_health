import 'package:flutter/material.dart';

import '../../../core/themes/app_text_styles.dart';
import '../../../l10n/localizations_utils.dart';

class TextBuilderWidget extends StatelessWidget {
  const TextBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: body1.copyWith(
            color: Theme.of(context).colorScheme.onSecondary,
            height: 1.5),
        children: [
          TextSpan(text: appLocalizations.walkTestInitialText),
          const TextSpan(text: '\n\n'),
          TextSpan(text: appLocalizations.testInstructionFirstPartText),
          TextSpan(
            text: appLocalizations.testStartText,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(text: appLocalizations.testInstructionSecondPartText),
          TextSpan(
            text: appLocalizations.testInstructionBoldText,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: appLocalizations.testInstructionWalkThirdPart),
          const TextSpan(text: '\n\n'),
          TextSpan(text: appLocalizations.walkTestDelayText(6)),
          TextSpan(
            text: appLocalizations.testInstructionBoldLowerText,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: appLocalizations.testInstructionAlertSecondText),
        ],
      ),
    );
  }
}