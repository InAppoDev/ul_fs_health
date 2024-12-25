import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/calculation_constants.dart';
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
import '../../walk_test/widget/walk_test_note_widget.dart';

@RoutePage()
class WalkTestStartScreen extends StatelessWidget {
  const WalkTestStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => TimerBloc()),
          BlocProvider(create: (_) => GPSBloc(getIt<GPSService>())),
        ],
        child: Builder(builder: (context) {
          Future.microtask(() {
            if (context.mounted) {
              context.read<GPSBloc>().add(const GPSEvent.startTracking());
              context.read<TimerBloc>().add(TimerEvent.startTimer(CalculationConstants.defaultTimerDuration));
            }
          });
          return const WalkTestStartContent();
        }));
  }
}

class WalkTestStartContent extends StatelessWidget {
  const WalkTestStartContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<TimerBloc, TimerState>(
      listener: (context, state) {
        if (state.status == TimerStatus.completed) {
          context.read<GPSBloc>().add(const GPSEvent.updatePosition());
          context
              .read<GPSBloc>()
              .add(GPSEvent.stopTracking(duration: CalculationConstants.defaultTimerDuration));
        } else if (state.status == TimerStatus.paused) {}

      },
      child: TestLayoutWidget(
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
            child: Text(appLocalizations.remainingTimeText.toUpperCase(), style: body1),
          ),
          Gaps.large.spaceVertical,
          const TimerWidget(),
          BlocBuilder<TimerBloc, TimerState>(
              builder: (context, state) => state.status != TimerStatus.completed
                  ? Padding(
                      padding: Gaps.larger.paddingHorizontal.copyWith(top: Gaps.largest),
                      child: SubmitButton(
                        onPressed: () async {
                          if (state.status == TimerStatus.running) {
                            context.read<TimerBloc>().add(TimerEvent.pauseTimer(
                                duration: CalculationConstants.defaultTimerDuration,
                                remainingTime: state.remainingTime));
                            context.read<GPSBloc>().add(const GPSEvent.updatePosition());
                            context.read<GPSBloc>().add(GPSEvent.stopTracking(
                                duration: CalculationConstants.defaultTimerDuration - state.remainingTime));
                          } else if (state.status == TimerStatus.paused) {
                            context.read<GPSBloc>().add(const GPSEvent.startTracking());
                            context.read<TimerBloc>().add(const TimerEvent.resumeTimer());
                            context.read<TimerBloc>().add(TimerEvent.updateTimer(
                                duration: CalculationConstants.defaultTimerDuration,
                                remainingTime: state.remainingTime));
                          }
                        },
                        title: context.watch<TimerBloc>().state.status == TimerStatus.paused
                            ? appLocalizations.btnTestResumeText.toUpperCase()
                            : appLocalizations.btnTestPauseText.toUpperCase(),
                        backgroundColor:
                            context.watch<TimerBloc>().state.status == TimerStatus.paused
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.secondary,
                        titleColor: context.watch<TimerBloc>().state.status == TimerStatus.paused
                            ? white
                            : Theme.of(context).colorScheme.onSecondary,
                      ))
                  : const SizedBox.shrink()),
          Gaps.largest.spaceVertical,
          if (context.watch<TimerBloc>().state.status != TimerStatus.completed) ...[
            WalkTestNoteWidget(boldText: appLocalizations.pauseTestUpperText),
            Gaps.largest.spaceVertical,
          ],
          if (context.watch<TimerBloc>().state.status == TimerStatus.completed) ...[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(appLocalizations.walkTestResultsText, style: body1),
            ),
            Gaps.largest.spaceVertical,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      appLocalizations.walkTestDistanceText.toUpperCase(),
                      style: body1,
                    ),
                    Gaps.medium.spaceVertical,
                    Text(
                      context.watch<GPSBloc>().state.distanceTraveled.formattedDistance,
                      style: body1.copyWith(fontSize: 28, height: 1),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      appLocalizations.walkTestAverageSpeedText.toUpperCase(),
                      style: body1,
                    ),
                    Gaps.medium.spaceVertical,
                    Text(
                      context.watch<GPSBloc>().state.averageSpeed.formattedSpeedInKmHour,
                      style: body1.copyWith(fontSize: 28, height: 1),
                    ),
                  ],
                ),
              ),
            ]),
            Gaps.largest.spaceVertical,
            SubmitButton(
              onPressed: () async {

              },
              title: appLocalizations.btnSaveResultsText,
              backgroundColor: Theme.of(context).colorScheme.primary,
              titleColor: Theme.of(context).colorScheme.onPrimary,
            ),
          ],
        ],
      ),
    );
  }
}
