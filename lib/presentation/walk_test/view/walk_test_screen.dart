// ignore_for_file: must_be_immutable

import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/router/app_router.dart';
import '../../../core/themes/app_colors.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';
import '../../utils/widgets/submit_button.dart';
import '../../utils/widgets/test_layout_widget.dart';
import '../../utils/widgets/text_builder_widget.dart';
import '../widget/walk_test_note_widget.dart';

@RoutePage()
class WalkTestScreen extends StatelessWidget {
  const WalkTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WalkTestContent();
  }
}

class WalkTestContent extends StatelessWidget {
  WalkTestContent({super.key});

  final _audioPlayer = AudioPlayer();
  final ValueNotifier<bool> _isStarting = ValueNotifier(false);
  final ValueNotifier<int?> _countdownValue = ValueNotifier(null);

  void _startCountDown(BuildContext context) {
    _isStarting.value = true;
    int countdown = 5;
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (countdown == 0) {
          _countdownValue.value = null;
          timer.cancel();
          _signalSound(context);
        } else {
          _countdownValue.value = countdown--;
        }
      },
    );
  }

  Future<void> _signalSound(BuildContext context) async {
    await _audioPlayer.setAsset('assets/sounds/signal.mp3');
    await _audioPlayer.play();
    context.router.push(const WalkTestStartRoute());
  }

  @override
  Widget build(BuildContext context) {
    return TestLayoutWidget(
      headerIcon: Assets.icons.iconWalkTest,
      headerText: appLocalizations.walkTestTitleText,
      children: [
        const TextBuilderWidget(),
        Gaps.largest.spaceVertical,
        ValueListenableBuilder<int?>(
          valueListenable: _countdownValue,
          builder: (context, countdown, _) {
            if (countdown != null) {
              return SubmitButton(
                onPressed: () {},
                title: '$countdown',
                backgroundColor: ColorScheme.of(context).primary,
                titleColor: white,
              );
            } else {
              return SubmitButton(
                onPressed: () {
                  _startCountDown(context);
                },
                title: appLocalizations.btnTestStartText.toUpperCase(),
                backgroundColor: ColorScheme.of(context).primary,
                titleColor: white,
              );
            }
          },
        ),
        Gaps.largest.spaceVertical,
        WalkTestNoteWidget(
          boldText: appLocalizations.pauseText,
        ),
      ],
    );
  }
}
