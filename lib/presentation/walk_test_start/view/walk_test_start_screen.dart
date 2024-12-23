import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/distance_extension.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../data/services/gps/gps_service.dart';
import '../../../di/service_locator.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';
import '../../logic/gps/gps_bloc.dart';
import '../../logic/timer/timer_bloc.dart';
import '../../timer/timer_widget.dart';
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
      BlocProvider(
          create: (_) => GPSBloc(getIt<GPSService>())..add(const GPSEvent.startTracking())),
    ], child: const WalkTestStartContent());
  }
}

class WalkTestStartContent extends StatelessWidget {
  const WalkTestStartContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TimerBloc, TimerState>(
      listener: (context, state) {
        if (state.status == TimerStatus.paused) {
        } else if (state.status == TimerStatus.completed) {
          context
              .read<GPSBloc>()
              .add(GPSEvent.stopTracking(remainingTime: Constants.defaultTimerDuration));
        }
      },
      child: TestLayoutWidget(
        isScrollable: true,
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
          BlocBuilder<TimerBloc, TimerState>(
              builder: (context, state) => state.status != TimerStatus.completed ? Padding(
                  padding: Gaps.larger.paddingAll.copyWith(top: Gaps.largest),
                  child: SubmitButton(
                    onPressed: () async {
                      if (state.status == TimerStatus.running) {
                        context.read<TimerBloc>().add(TimerEvent.pauseTimer(
                            duration: Constants.defaultTimerDuration,
                            remainingTime: state.remainingTime));
                        // context.read<GPSBloc>().add(GPSEvent.stopTracking(
                        //     remainingTime: Constants.defaultTimerDuration - state.remainingTime));
                      } else if (state.status == TimerStatus.paused) {
                        context.read<GPSBloc>().add(const GPSEvent.startTracking());
                        context.read<TimerBloc>().add(const TimerEvent.resumeTimer());
                        context.read<TimerBloc>().add(TimerEvent.updateTimer(
                            duration: Constants.defaultTimerDuration,
                            remainingTime: state.remainingTime));
                      }
                      // else if(state.status == TimerStatus.)
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
                  )) : const SizedBox.shrink()),
          Gaps.largest.spaceVertical,
          if (context.watch<TimerBloc>().state.status != TimerStatus.completed)
            WalkTestNoteWidget(boldText: appLocalizations.pauseTestUpperText),
          if (context.watch<TimerBloc>().state.status == TimerStatus.completed) ...[
            Text(appLocalizations.testFinishedText, style: body1),
            SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("distance:", style: body1),
                  Text(context.watch<GPSBloc>().state.distanceTraveled.formattedDistance,
                      style: body1),
                ])),
            Gaps.largest.spaceVertical,
            SubmitButton(
              onPressed: () async {},
              title: appLocalizations.btnTestStartText,
              backgroundColor: Theme.of(context).colorScheme.primary,
              titleColor: Theme.of(context).colorScheme.onPrimary,
            )
          ]
        ],
      ),
    );
  }
}
