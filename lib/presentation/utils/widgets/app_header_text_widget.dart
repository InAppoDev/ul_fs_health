import 'package:flutter/material.dart';

import '../../../core/themes/app_text_styles.dart';
import '../../../l10n/localizations_utils.dart';

class AppHeaderTextWidget extends StatelessWidget {
  const AppHeaderTextWidget({super.key, this.lblActStyle, this.lblOnStyle});
  final TextStyle? lblActStyle;
  final TextStyle? lblOnStyle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: appLocalizations.lblAct,
            style: lblActStyle ?? header1,
          ),
          TextSpan(
            text: appLocalizations.lblOn,
            style: lblOnStyle ??
                header1.copyWith(color: ColorScheme.of(context).primary),
          )
        ],
      ),
    );
  }
}
