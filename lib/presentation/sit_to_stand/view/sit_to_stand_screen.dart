import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/extensions/string_extension.dart';
import '../../../core/router/app_router.dart';
import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
import '../../utils/widgets/feature_test_header.dart';
import '../../utils/widgets/simple_app_bar_widget.dart';
import '../../utils/widgets/submit_button.dart';

@RoutePage()
class SitToStandScreen extends StatelessWidget {
  const SitToStandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SitToStandContent();
  }
}

class SitToStandContent extends StatelessWidget {
  SitToStandContent({super.key});

  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBarWidget(
        onInfoPress: () {},
        showBackButton: true,
      ),
      body: Column(
        children: [
          Gaps.large.spaceVertical,
          FeatureTestHeader(
            title: S.current.sitToStandTestTitleText,
            leading: Assets.icons.iconSitDownTest,
          ),
          (Gaps.largest + Gaps.large).spaceVertical,
          Padding(
            padding:
                Gaps.larger.paddingHorizontal.copyWith(bottom: Gaps.larger),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onSecondary,
                    height: 1.5),
                children: [
                  TextSpan(text: S.current.lblSitToStandPageTitle),
                  const TextSpan(text: '\n\n'),
                  TextSpan(text: S.current.lblSitToStandPageDescription1),
                  TextSpan(
                    text: S.current.btnTestStartText.toUpperCase(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: S.current.lblSitToStandPageDescription2),
                  TextSpan(
                    text: S.current.lblSoundSignal.capitalized,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: S.current.lblSitToStandPageDescription3),
                  const TextSpan(text: '\n\n'),
                  TextSpan(text: S.current.lblSitToStandAlertInfo1(5)),
                  TextSpan(
                    text: S.current.lblSoundSignal,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: S.current.lblSitToStandAlertInfo2),
                ],
              ),
            ),
          ),
          Padding(
            padding: Gaps.larger.paddingHorizontal,
            child: SubmitButton(
              onPressed: () async {
                _audioPlayer
                  ..setAsset('assets/sounds/signal.mp3')
                  ..play();
                context.router.push(const SitToStandTestStartRoute());
              },
              title: S.current.btnTestStartText.toUpperCase(),
              backgroundColor: Theme.of(context).colorScheme.primary,
              titleColor: Theme.of(context).colorScheme.onPrimary,
            ),
          )
        ],
      ),
    );
  }
}
