import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/themes/app_colors.dart';
import '../../../gen/assets.gen.dart';
import 'app_header_text_widget.dart';

class SimpleAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const SimpleAppBarWidget({
    super.key,
    this.showBackButton = false,
    this.actions,
    this.onInfoPress,
    this.contentPadding,
    this.toolBarHeight = kToolbarHeight,
    this.onLeadingPress,
    this.title,
  });

  final EdgeInsets? contentPadding;
  final bool showBackButton;
  final double toolBarHeight;
  final void Function(BuildContext)? onLeadingPress;
  final VoidCallback? onInfoPress;
  final Widget? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      surfaceTintColor: white,
      centerTitle: true,
      actions: actions ??
          [
            IconButton(
              onPressed: onInfoPress,
              icon: Icon(
                Icons.info_outline_rounded,
                color: ColorScheme.of(context).primary,
              ),
            ),
          ],
      title: title ?? const AppHeaderTextWidget(),
      leading: showBackButton
          ? const AutoLeadingButton()
          : Builder(builder: (context) => IconButton(
              onPressed: () => onLeadingPress?.call(context),
              icon: Assets.icons.menu.svg(),
            ),
    ));
  }

  @override
  Size get preferredSize => Size.fromHeight(toolBarHeight);
}
