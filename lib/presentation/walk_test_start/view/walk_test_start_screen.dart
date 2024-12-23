import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';
import '../../logic/timer/timer_bloc.dart';
import '../../timer/timer_widget.dart';
import '../../utils/widgets/feature_test_header.dart';
import '../../utils/widgets/simple_app_bar_widget.dart';
import '../../utils/widgets/submit_button.dart';
import '../../utils/widgets/test_layout_widget.dart';
import '../../walk_test/view/walk_test_note_widget.dart';

@RoutePage()
class WalkTestStartScreen extends StatelessWidget {
  const WalkTestStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
          create: (_) => TimerBloc()..add(TimerEvent.startTimer(Constants.defaultTimerDuration))),
    ], child: const WalkTestStartContent());
  }
}

class WalkTestStartContent extends StatelessWidget {
  const WalkTestStartContent({super.key});

  @override
  Widget build(BuildContext context) {
    return TestLayoutWidget(
        headerIcon: Assets.icons.iconWalkTest,
        headerText: appLocalizations.walkTestTitleText,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (context.watch<TimerBloc>().state.status == TimerStatus.completed)
            Align(
              child: Text(
                appLocalizations.testFinishedText,
                style: header3.copyWith(
                    fontWeight: FontWeight.w600, color: ColorScheme.of(context).primary),
                textAlign: TextAlign.center,
              ),
            ),
          Gaps.larger.spaceVertical,
          Align(
              alignment: Alignment.centerLeft,
              child: Text(appLocalizations.remainingTimeText, style: body1),
          ),
          Gaps.large.spaceVertical,
          const TimerWidget(),
          Padding(
              padding: Gaps.larger.paddingAll.copyWith(top: Gaps.largest),
              child: BlocBuilder<TimerBloc, TimerState>(builder: (context, state) {
                return SubmitButton(
                  onPressed: () async {
                    if (state.status == TimerStatus.running) {
                      context.read<TimerBloc>().add(TimerEvent.onPauseTimer(
                          duration: Constants.defaultTimerDuration,
                          remainingTime: state.remainingTime));
                    } else if (state.status == TimerStatus.paused) {
                      context.read<TimerBloc>().add(TimerEvent.updateTimer(
                          duration: Constants.defaultTimerDuration,
                          remainingTime: state.remainingTime));
                    }
                  },
                  title: context.watch<TimerBloc>().state.status == TimerStatus.paused
                      ? appLocalizations.btnTestResumeText.toUpperCase()
                      : appLocalizations.btnTestPauseText.toUpperCase(),
                  backgroundColor: context.watch<TimerBloc>().state.status == TimerStatus.paused
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.secondary,
                  titleColor: context.watch<TimerBloc>().state.status == TimerStatus.paused
                      ? white
                      : Theme.of(context).colorScheme.onSecondary,
                );
              })),
          Gaps.largest.spaceVertical,
          WalkTestNoteWidget(boldText: appLocalizations.pauseTestUpperText),
        ],
      );
  }
}
