import 'dart:developer' as dev;
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/router/app_router.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../data/services/permission/permission_service.dart';
import '../../../di/service_locator.dart';
import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
import '../../../l10n/localizations_utils.dart';
import '../../../my_app.dart';
import '../../logic/user/user_bloc.dart';
import '../../navigation/model/sidebar_menu_item.dart';
import '../../utils/widgets/sidebar_widget.dart';
import '../../utils/widgets/simple_app_bar_widget.dart';
import '../../utils/widgets/simple_drop_down_button.dart';
import '../../utils/widgets/submit_button.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeContent();
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  List<SidebarMenuItem> _buildMenuItems(BuildContext context) {
    return [
      SidebarMenuItem(
          routeName: HomeRoute.name,
          onPress: () => context.hideSideBar(),
          icon: Assets.icons.iconHome.svg(),
          title: appLocalizations.menuDashboardText),
      SidebarMenuItem(
          routeName: HistoryRoute.name,
          onPress: () => context.router.push(const HistoryRoute()),
          icon: Assets.icons.iconResults.svg(),
          title: appLocalizations.menuResultsText),
      SidebarMenuItem(
          routeName: QuestionnaireInitialRoute.name,
          onPress: () => context.router
              .push(QuestionnaireInitialRoute(shouldAuthenticate: true)),
          icon: Assets.icons.iconQuestionnaire.svg(),
          title: appLocalizations.menuQuestionnaireText),
      SidebarMenuItem(
          routeName: ProfileRoute.name,
          onPress: () => context.router.push(const ProfileRoute()),
          icon: Assets.icons.iconProfile.svg(),
          title: appLocalizations.menuProfileText),
      SidebarMenuItem(
          onPress: () =>
              context.read<UserBloc>().add(const UserEvent.userLogout()),
          icon: Transform.rotate(
              angle: pi,
              child:
                  Icon(Icons.logout, color: ColorScheme.of(context).primary)),
          title: appLocalizations.menuLogoutText,
          titleColor: ColorScheme.of(context).primary)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state.status == UserStatus.unauthenticated) {
          context.router.replaceAll([const LoginRoute()]);
        }
      },
      child: Scaffold(
        appBar: SimpleAppBarWidget(
          actions: [
            SimpleDropDownButton(
              items: S.delegate.supportedLocales,
              selectedItem: MyApp.getLocale(context),
              width: MediaQuery.sizeOf(context).width / 3,
              onChanged: (value) async {
                MyApp.setLocale(context, value ?? MyApp.getLocale(context));
              },
            ),
          ],
          onLeadingPress: (context) {
            context.showSideBar();
          },
        ),
        drawer: Builder(
          builder: (context) => SideBarWidget(
            selectedRouteName: context.router.current.name,
            items: _buildMenuItems(context),
          ),
        ),
        body: Center(
          child: Padding(
            padding: Gaps.larger.paddingHorizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Padding(
                      padding: Gaps.smaller.paddingBottom,
                      child: Text(
                        appLocalizations
                            .welcomeAppNameText(appLocalizations.lblAppName),
                        style: header1.copyWith(
                            fontSize: Constants.headerLargeTextSize),
                        textAlign: TextAlign.center,
                      )),
                  subtitle: Text(appLocalizations.welcomeAppDescriptionText,
                      style: body1),
                ),
                Constants.sizedBoxHeightLarge.spaceVertical,
                Row(
                  children: [
                    Assets.icons.iconWalkTest.svg(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(appLocalizations.walkTestTitleText,
                              style: header2),
                          Gaps.smaller.spaceVertical,
                          Text(appLocalizations.walkTestDescriptionText,
                              style: body3),
                        ],
                      ),
                    )
                  ],
                ),
                Constants.sizedBoxHeightMiddle.spaceVertical,
                SubmitButton(
                    onPressed: () => _onStartWalkTest(context),
                    title: appLocalizations.btnTestStartText,
                    backgroundColor: ColorScheme.of(context).primary,
                    titleColor: white),
                Constants.sizedBoxHeightSmall.spaceVertical,
                // TODOHovsep: change navigation when instraction UI will ready, for now navigate walk initial page
                SubmitButton(
                    onPressed: () =>
                        context.router.push(const WalkTestInitialRoute()),
                    title: appLocalizations.btnTestInstructionsText,
                    backgroundColor: defaultBtnInactiveBackground,
                    titleColor: defaultTextColor),
                Constants.sizedBoxHeightLarge.spaceVertical,
                Row(
                  children: [
                    Assets.icons.iconSitDownTest.svg(),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(appLocalizations.sitToStandTestTitleText,
                              style: header2),
                          Gaps.smaller.spaceVertical,
                          Text(appLocalizations.sitToStandTestDescriptionText,
                              style: body3),
                        ],
                      ),
                    )
                  ],
                ),
                Constants.sizedBoxHeightMiddle.spaceVertical,
                SubmitButton(
                    onPressed: () {
                      context.router.push(const SitToStandRoute());
                    },
                    title: appLocalizations.btnTestStartText,
                    backgroundColor: ColorScheme.of(context).primary,
                    titleColor: white),
                Constants.sizedBoxHeightSmall.spaceVertical,
                SubmitButton(
                    onPressed: () {
                      context.router.push(const SitToStandRoute());
                    },
                    title: appLocalizations.btnTestInstructionsText,
                    backgroundColor: defaultBtnInactiveBackground,
                    titleColor: defaultTextColor),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _checkActivityRecognitionPermission() async {
    bool granted = await Permission.activityRecognition.isGranted;
    final bool granted2 = await Permission.sensors.isGranted;

    if (!granted) {
      granted = await Permission.activityRecognition.request() == PermissionStatus.granted;
    }
    if (!granted2) {
      granted = await Permission.sensors.request() == PermissionStatus.granted;
    }

    return granted;
  }

  Future<void> _initPlatformState(BuildContext context) async {
    final bool granted = await _checkActivityRecognitionPermission();
    if (!granted) {
      dev.log('errrr pedometer');
      context.showSnackBarMessage('activity permission denied');
      await Future<void>.delayed(const Duration(seconds: 1)).then(
            (value) async {
          await getIt<PermissionService>().openAppSettings();
        },
      );
      return;
      // tell user, the app will not work
    }
  }


  Future<void> _onStartWalkTest(BuildContext context) async {
    final permission = await getIt<PermissionService>().handlePermission();
    if (permission == LocationPermission.deniedForever) {
      context.showSnackBarMessage('Location permission denied');
      await Future<void>.delayed(const Duration(seconds: 1)).then(
        (value) async {
          await getIt<PermissionService>().openAppSettings();
        },
      );
    }
    if (permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse) {
      context.router.push(const WalkTestInitialRoute());
    }
    await _initPlatformState(context);
  }
}
