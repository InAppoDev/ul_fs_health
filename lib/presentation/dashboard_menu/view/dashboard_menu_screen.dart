import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/router/app_router.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';
import '../../auth/widgets/auth_guard_widget.dart';
import '../../logic/user/user_bloc.dart';

@RoutePage()
class DashboardMenuScreen extends StatelessWidget {
  const DashboardMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthGuardWidget(
        child: Padding(
          padding: Gaps.extraLarge.paddingTop,
          child: Container(
            padding: Gaps.large.paddingHorizontal,
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.7),
            decoration: BoxDecoration(color: white, boxShadow: [
              BoxShadow(
                  offset: Constants.defaultShadowSize.smallY,
                  blurRadius: Constants.defaultBlurRadius,
                  color: blackL)
            ]),
            child: Column(
              children: [
                Gaps.large.spaceVertical,
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      context.router.maybePop();
                    },
                    icon: Assets.icons.chevronLeft.svg(),
                  ),
                ),
                ListTile(
                    visualDensity: VisualDensity.compact,
                    onTap: () {
                      context.router.maybePop();
                    },
                    leading: Assets.icons.iconHome.svg(),
                    title: Text(appLocalizations.menuDashboardText, style: body4)),
                Divider(color: defaultDividerColor, endIndent: Constants.defaultDividerEndIndent),
                ListTile(
                    visualDensity: VisualDensity.compact,
                    onTap: () {},
                    leading: Assets.icons.iconResults.svg(),
                    title: Text(appLocalizations.menuResultsText, style: body4)),
                Divider(color: defaultDividerColor, endIndent: Constants.defaultDividerEndIndent),
                ListTile(
                    visualDensity: VisualDensity.compact,
                    onTap: () {
                      context.router.push(const QuestionnaireRoute());
                    },
                    leading: Assets.icons.iconQuestionnaire.svg(),
                    title: Text(
                      appLocalizations.menuQuestionnaireText,
                      style: body4,
                    )),
                Divider(color: defaultDividerColor, endIndent: Constants.defaultDividerEndIndent),
                ListTile(
                    visualDensity: VisualDensity.compact,
                    onTap: () {
                      context.router.push(const ProfileRoute());
                    },
                    leading: Assets.icons.iconProfile.svg(),
                    title: Text(appLocalizations.menuProfileText)),
                Divider(color: defaultDividerColor, endIndent: Constants.defaultDividerEndIndent),
                ListTile(
                    visualDensity: VisualDensity.compact,
                    onTap: () {
                      context.read<UserBloc>().add(const UserEvent.userLogout());
                    },
                    leading: Transform.rotate(
                        angle: pi, child: Icon(Icons.logout, color: ColorScheme.of(context).primary)),
                    title: Text(appLocalizations.menuLogoutText,
                        style: body4.copyWith(color: ColorScheme.of(context).primary))),
                Divider(color: defaultDividerColor, endIndent: Constants.defaultDividerEndIndent),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
