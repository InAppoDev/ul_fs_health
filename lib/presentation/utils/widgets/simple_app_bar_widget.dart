import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';

class SimpleAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const SimpleAppBarWidget(
      {super.key,
      this.showBackButton = false,
      this.onInfoPress,
      this.contentPadding,
      this.toolBarHeight = kToolbarHeight,
      this.onLeadingPress});

  final EdgeInsets? contentPadding;
  final bool showBackButton;
  final double toolBarHeight;
  final VoidCallback? onLeadingPress;
  final VoidCallback? onInfoPress;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: white,
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: onInfoPress,
            icon: Icon(Icons.info_outline_rounded,
                color: ColorScheme.of(context).primary))
      ],
      title: Text(appLocalizations.lblAppName, style: header1),
      leading: showBackButton
          ? const AutoLeadingButton()
          : IconButton(
              onPressed: onLeadingPress, icon: Assets.icons.menu.svg()),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolBarHeight);
}
