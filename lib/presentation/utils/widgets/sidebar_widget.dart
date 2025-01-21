import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../l10n/localizations_utils.dart';
import '../../navigation/model/sidebar_menu_item.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({super.key, required this.items, required this.selectedRouteName});

  final List<SidebarMenuItem> items;
  final String selectedRouteName;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) => ListTile(
            visualDensity: VisualDensity.compact,
            onTap: items[index].routeName == selectedRouteName
                ? () => context.hideSideBar()
                : items[index].onPress,
            leading: items[index].icon,
            title: Text(appLocalizations.menuDashboardText,
                style: items[index].titleColor == null
                    ? body4
                    : body4.copyWith(color: items[index].titleColor))),
        separatorBuilder: (BuildContext context, int index) =>
            Divider(color: defaultDividerColor, endIndent: Constants.defaultDividerEndIndent),
        itemCount: items.length,
      ),
    );
  }
}
