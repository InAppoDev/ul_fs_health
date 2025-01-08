import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/gaps.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/extensions/number_extension.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../di/service_locator.dart';
import '../../../../domain/repositories/sit_to_stand_repository.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../generated/l10n.dart';
import '../../../utils/widgets/feature_test_header.dart';
import '../../../utils/widgets/repetition_counter.dart';
import '../../../utils/widgets/simple_app_bar_widget.dart';
import '../../../utils/widgets/submit_button.dart';
import '../bloc/sit_to_stand_bloc.dart';
import '../bloc/sit_to_stand_event.dart';
import '../bloc/sit_to_stand_state.dart';

@RoutePage()
class SitToStandTestStartScreen extends StatelessWidget {
  const SitToStandTestStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SitToStandBloc(
            sitToStandRepository: getIt<SitToStandRepository>(),
          )..add(const SitToStandEvent.startTest()),
        ),
      ],
      child: const SitToStandTestStartContent(),
    );
  }
}

class SitToStandTestStartContent extends StatelessWidget {
  const SitToStandTestStartContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBarWidget(
        onInfoPress: () {},
        showBackButton: true,
      ),
      body: BlocConsumer<SitToStandBloc, SitToStandState>(
        listener: (context, state) {
          if (state.status == SitToStandStatus.failure) {
            context.showSnackBarMessage(state.error ?? '');
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Gaps.large.spaceVertical,
                FeatureTestHeader(
                  title: S.current.sitToStandTestTitleText,
                  leading: Assets.icons.iconSitDownTest,
                ),
                (Gaps.largest + Gaps.large).spaceVertical,
                if (state.isTestFinished || state.currentRepetition == 5)
                  Text(
                    S.current.lblTestFinished.toUpperCase(),
                    style: header2.copyWith(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                Gaps.largest.spaceVertical,
                Padding(
                  padding: Gaps.larger.paddingHorizontal,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      S.current.lblSitToStandRepetitions.toUpperCase(),
                      style: body1,
                    ),
                  ),
                ),
                Gaps.largest.spaceVertical,
                RepetitionCounter(
                  repetition: state.currentRepetition,
                  totalRepetitions: Constants.totalRepetitions,
                  progress: state.progress,
                  bestTime: state.bestTime,
                ),
                if (state.currentRepetition < Constants.totalRepetitions)
                  Padding(
                    padding: Gaps.larger.paddingAll.copyWith(top: Gaps.largest),
                    child: SubmitButton(
                      isValid:
                          state.currentRepetition < Constants.totalRepetitions,
                      onPressed: () {
                        if (state.isTestRunning) {
                          context
                              .read<SitToStandBloc>()
                              .add(const StopTestEvent());
                        } else {
                          context
                              .read<SitToStandBloc>()
                              .add(const StartTestEvent());
                        }
                      },
                      title: state.isTestRunning
                          ? S.current.btnTestStopText.toUpperCase()
                          : S.current.btnTestStartText.toUpperCase(),
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      titleColor: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                if (state.currentRepetition == Constants.totalRepetitions) ...[
                  Padding(
                    padding: Gaps.larger.paddingHorizontal,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Gaps.large.spaceVertical,
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(S.current.lblBestSitToStandResult),
                        ),
                        Gaps.large.spaceVertical,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(S.current.lblTime, style: body1),
                                Text(
                                  '${state.bestTime.toStringAsFixed(3)} s',
                                  style: body1.copyWith(fontSize: 28),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(S.current.lblVelocity, style: body1),
                                Text(
                                  '${state.bestVelocity.toStringAsFixed(2)} m/s',
                                  style: body1.copyWith(fontSize: 28),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Gaps.largest.spaceVertical,
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorScheme.of(context).primary,
                          ).copyWith(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    Constants.containerBorderRadius),
                              ),
                            ),
                          ),
                          onPressed: () {
                            context
                                .read<SitToStandBloc>()
                                .add(const SaveTestResultEvent());
                          },
                          child: Text(
                            S.current.lblSaveResults,
                            style: body1.copyWith(
                              fontWeight: FontWeight.w500,
                              color: ColorScheme.of(context).onPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
