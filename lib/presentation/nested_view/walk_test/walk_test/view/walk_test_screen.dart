import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';


import '../../../../../core/constants/gaps.dart';
import '../../../../../core/extensions/number_extension.dart';
import '../../../../../core/router/walk_test_router.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../l10n/localizations_utils.dart';
import '../../../../utils/widgets/submit_button.dart';
import '../../../../utils/widgets/test_layout_widget.dart';
import '../../../../utils/widgets/text_builder_widget.dart';
import '../../widget/walk_test_note_widget.dart';

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

  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return TestLayoutWidget(
        headerIcon: Assets.icons.iconWalkTest,
        headerText: appLocalizations.walkTestTitleText,
        children: [
          const TextBuilderWidget(),
          Gaps.largest.spaceVertical,
          SubmitButton(
              onPressed: () {
                _audioPlayer
                  ..setAsset('assets/sounds/signal.mp3')
                  ..play();
                context.router.push(const WalkTestStartRoute());
              },
              title: appLocalizations.btnTestStartText.toUpperCase(),
              backgroundColor: ColorScheme.of(context).primary,
              titleColor: white
          ),
          Gaps.largest.spaceVertical,
          WalkTestNoteWidget(
            boldText: appLocalizations.pauseText,
          )
        ]);
  }
}
