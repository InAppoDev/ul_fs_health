import 'package:flutter/cupertino.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../l10n/localizations_utils.dart';


class WalkTestNoteWidget extends StatelessWidget {
  const WalkTestNoteWidget({super.key, required this.boldText});

  final String boldText;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          children: [
            TextSpan(
                text: appLocalizations.walkTestAdditionalInfoFirstPartText,
                style: body1.copyWith(color: lighterGrey)
            ),
            TextSpan(
              text: boldText,
              style: body1.copyWith(fontWeight: FontWeight.w700),
            ),
            TextSpan(
                text: appLocalizations.walkTestAdditionalInformationSecondPartText,
                style: body1.copyWith(color: lighterGrey)
            ),
          ]
      ),
    );
  }
}