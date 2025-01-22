import 'dart:async';

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
    return const SitToStandContent();
  }
}

class SitToStandContent extends StatefulWidget {
  const SitToStandContent({super.key});

  @override
  State<SitToStandContent> createState() => _SitToStandContentState();
}

class _SitToStandContentState extends State<SitToStandContent> {
  final _audioPlayer = AudioPlayer();

  bool _isStarting = false;
  final ValueNotifier<int?> _countdownValue = ValueNotifier(null);
  Timer? _timer;

  void _startCountDown(BuildContext context) {
    setState(() {
      _isStarting = true;
    });
    _countdownValue.value = 5;
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_countdownValue.value == 0) {
          _resetTimer();
          _signalSound(context);
        } else {
          _countdownValue.value = (_countdownValue.value ?? 1) - 1;
        }
      },
    );
  }

  void _resetTimer() {
    _countdownValue.value = null;
    _timer?.cancel();
    _isStarting = false;
    setState(() {});
  }

  Future<void> _signalSound(BuildContext context) async {
    await _audioPlayer.setAsset('assets/sounds/signal.mp3');
    await _audioPlayer.play();
    context.router.push(const SitToStandTestStartRoute());
  }

  @override
  void dispose() {
    super.dispose();
    _audioPlayer.dispose();
    _timer?.cancel();
  }

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
            child: ValueListenableBuilder<int?>(
              valueListenable: _countdownValue,
              builder: (context, countdown, child) {
                return SubmitButton(
                  onPressed: _isStarting
                      ? () {}
                      : () {
                          _startCountDown(context);
                        },
                  title: countdown != null
                      ? countdown.toString()
                      : S.current.btnTestStartText.toUpperCase(),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  titleColor: Theme.of(context).colorScheme.onPrimary,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
