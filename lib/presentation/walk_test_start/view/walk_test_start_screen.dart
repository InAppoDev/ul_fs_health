import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/calculation_constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/extensions/unit_extension.dart';
import '../../../core/router/app_router.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../di/service_locator.dart';
import '../../../domain/repositories/user_repository.dart';
import '../../../domain/repositories/walk_repository.dart';
import '../../../domain/usecase/gps_use_case.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';
import '../../logic/gps/gps_bloc.dart';
import '../../logic/timer/timer_bloc.dart';
import '../../logic/user/user_bloc.dart';
import '../../timer/timer_widget.dart';
import '../../utils/widgets/submit_button.dart';
import '../../utils/widgets/test_layout_widget.dart';
import '../../walk_test/bloc/walk_test_bloc.dart';
import '../../walk_test/widget/walk_test_note_widget.dart';
import '../bloc/result_bloc.dart';

@RoutePage()
class WalkTestStartScreen extends StatelessWidget {
  const WalkTestStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => ResultBloc(getIt<UserRepository>(), getIt<WalkRepository>())),
          BlocProvider(create: (_) => TimerBloc()..add(TimerEvent.startTimer(CalculationConstants.defaultTimerDuration))),
          BlocProvider(create: (_) => GPSBloc(getIt<GpsUseCase>())..add(const GPSEvent.startTracking())),
        ],
        child: Builder(builder: (context) {
          return WalkTestStartContent(
              goalDistance: context.watch<WalkTestBloc>().state.selectedLength ?? CalculationConstants.defaultDistanceUnit);
        }));
  }
}

class WalkTestStartContent extends StatelessWidget {
  const WalkTestStartContent({super.key, required this.goalDistance});

  final double goalDistance;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TimerBloc, TimerState>(listener: (context, state) {
          if (state.status == TimerStatus.completed) {
            context.read<GPSBloc>().add(const GPSEvent.updatePosition());
            context
                .read<GPSBloc>()
                .add(GPSEvent.stopTracking(duration: CalculationConstants.defaultTimerDuration));
          } else if (state.status == TimerStatus.running) {
            context.read<GPSBloc>().add(GPSEvent.updateStartingSpeed(
                duration: CalculationConstants.defaultTimerDuration - state.remainingTime));
            context.read<GPSBloc>().add(GPSEvent.reachGoal(goalDistance: goalDistance));
          }
        }),
        BlocListener<ResultBloc, ResultState>(listener: (context, state) {
          if (state.status == ResultStatus.success) {
            context.router.push(const WalkTestResultRoute());
          } else if (state.status == ResultStatus.failure) {
            context.showSnackBarMessage(state.errorText ?? '');
          }
        })
      ],
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
                                duration: CalculationConstants.defaultTimerDuration -
                                    state.remainingTime));
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
              child: Text(appLocalizations.walkTestResultsText.toUpperCase(), style: body1),
            ),
            Gaps.large.spaceVertical,
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
                      context.watch<GPSBloc>().state.distanceTraveled.formattedDistanceMReplaced,
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
                      context.watch<GPSBloc>().state.averageSpeed.formattedSpeedKmhReplaced,
                      style: body1.copyWith(fontSize: 28, height: 1),
                    ),
                  ],
                ),
              ),
            ]),
            Gaps.largest.spaceVertical,
            BlocBuilder<GPSBloc, GPSState>(
              builder: (context, state) => SubmitButton(
                onPressed: () async {
                  context.read<ResultBloc>().add(ResultEvent.saveResults(
                      date: DateTime.now(),
                      distance: state.distanceTraveled,
                      averageSpeed: state.averageSpeed));
                },
                isLoading: context.watch<ResultBloc>().state.status == ResultStatus.loading ||
                    context.watch<GPSBloc>().state.status == GPSStatus.loading ||
                    context.watch<UserBloc>().state.status == UserStatus.loading,
                title: appLocalizations.btnSaveResultsText.toUpperCase(),
                backgroundColor: Theme.of(context).colorScheme.primary,
                titleColor: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
