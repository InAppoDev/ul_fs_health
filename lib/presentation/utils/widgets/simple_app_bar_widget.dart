import 'package:flutter/material.dart';

import '../../../core/themes/app_text_styles.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';

class SimpleAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBarWidget({super.key,
    this.showBackButton = false,
    this.onInfoPress,
    this.toolBarHeight = kToolbarHeight,
    this.onLeadingPress
  });
  final bool showBackButton;
  final double toolBarHeight;
  final VoidCallback? onLeadingPress;
  final VoidCallback? onInfoPress;

  @override
  Widget build(BuildContext context) {

    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: showBackButton,
      actions: [
        IconButton(
            onPressed: onInfoPress,
            icon: Icon(Icons.info_outline_rounded, color: ColorScheme.of(context).primary))
      ],
      title: Text(appLocalizations.lblAppName, style: header1),
      leading: !showBackButton ? null : IconButton(
          onPressed: onLeadingPress,
          icon: Assets.icons.menu.svg()),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolBarHeight);
}