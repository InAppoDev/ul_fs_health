import 'package:flutter/cupertino.dart';

class SidebarMenuItem {
  const SidebarMenuItem({
    required this.onPress,
    required this.icon,
    required this.title,
    this.routeName = '',
    this.activeIcon,
    this.titleColor,
  });

  final String title;
  final VoidCallback onPress;
  final Widget icon;
  final String routeName;
  final Color? titleColor;
  final Widget? activeIcon;
}
