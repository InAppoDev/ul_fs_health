import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/router/app_router.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';
import '../../utils/widgets/simple_app_bar_widget.dart';
import '../../utils/widgets/submit_button.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeContent();
  }
}

class HomeContent extends StatelessWidget {
  HomeContent({super.key});

  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBarWidget(
        onInfoPress: () {
          // TODO Hovsep: implement info press
        },
        onLeadingPress: () {
          context.router.push(const DashboardMenuRoute());
        },
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
                  onPressed: () {
                    _audioPlayer
                      ..setAsset('assets/sounds/signal.mp3')
                      ..play();
                    context.router.push(const WalkTestStartRoute());
                  },
                  title: appLocalizations.btnTestStartText,
                  backgroundColor: ColorScheme.of(context).primary,
                  titleColor: white),
              Constants.sizedBoxHeightSmall.spaceVertical,
              SubmitButton(
                  onPressed: () {
                    context.router.push(const WalkTestInitialRoute());
                  },
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
              // Gaps.larger.spaceVertical
            ],
          ),
        ),
      ),
    );
  }
}
