import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../navigation/model/sidebar_menu_item.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({super.key, required this.items, required this.selectedRouteName});

  final List<SidebarMenuItem> items;
  final String selectedRouteName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        shape: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.zero,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: ListView.separated(
          padding: Gaps.large.paddingTop,
          itemBuilder: (BuildContext context, int index) => ListTile(
              visualDensity: VisualDensity.compact,
              onTap: items[index].routeName == selectedRouteName
                  ? () => context.hideSideBar()
                  : items[index].onPress,
              leading: items[index].icon,
              title: Text(items[index].title,
                  style: items[index].titleColor == null
                      ? body4
                      : body4.copyWith(color: items[index].titleColor))),
          separatorBuilder: (BuildContext context, int index) =>
              Divider(color: defaultDividerColor, endIndent: Constants.defaultDividerEndIndent),
          itemCount: items.length,
        ),
      ),
    );
  }
}
