import 'package:flutter/material.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../generated/l10n.dart';

class TermsPolicyWidget extends StatelessWidget {
  const TermsPolicyWidget({
    super.key,
    required this.messagePrefix,
  });

  final String messagePrefix;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: '$messagePrefix ',
              style: body1.copyWith(color: darkGrey),
              children: <TextSpan>[
                TextSpan(
                  text: S.current.lblTermsService,
                  style: body1.copyWith(
                    color: ColorScheme.of(context).onSurface,
                  ),
                ),
                TextSpan(
                  text: S.current.lblAnd,
                  style: body1.copyWith(color: darkGrey),
                ),
                TextSpan(
                  text: S.current.lblPrivacyPolicy,
                  style: body1.copyWith(
                    color: ColorScheme.of(context).onSurface,
                  ),
                ),
              ],
            ),
          ),
        ),
        Gaps.small.spaceVertical,
      ],
    );
  }
}
