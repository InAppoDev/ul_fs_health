import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../data/repositories/sit_to_stand_repository_imp.dart';
import '../../../data/services/sit_to_stand/sit_to_stand_service_imp.dart';
import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
import '../../utils/widgets/feature_test_header.dart';
import '../../utils/widgets/repetition_counter.dart';
import '../../utils/widgets/simple_app_bar_widget.dart';
import '../../utils/widgets/submit_button.dart';
import '../logic/bloc/sit_to_stand_bloc.dart';
import '../logic/bloc/sit_to_stand_event.dart';
import '../logic/bloc/sit_to_stand_state.dart';

@RoutePage()
class SitToStandTestStartScreen extends StatefulWidget {
  const SitToStandTestStartScreen({super.key});

  @override
  State<SitToStandTestStartScreen> createState() =>
      _SitToStandTestStartScreenState();
}

class _SitToStandTestStartScreenState extends State<SitToStandTestStartScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SitToStandBloc(
            sitToStandRepository: SitToStandRepositoryImp(
              sitToStandService: SitToStandServiceImp(),
            ),
          ),
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
    final userId = FirebaseAuth.instance.currentUser?.uid;
    final userRef = FirebaseFirestore.instance.collection('users').doc(userId);

    return Scaffold(
      appBar: SimpleAppBarWidget(
        onInfoPress: () {},
        showBackButton: true,
      ),
      body: BlocConsumer<SitToStandBloc, SitToStandState>(
        listener: (context, state) {},
        builder: (context, state) {
          final sitToStandBloc = context.read<SitToStandBloc>();

          return Column(
            children: [
              Gaps.large.spaceVertical,
              FeatureTestHeader(
                title: S.current.sitToStandTestTitleText,
                leading: Assets.icons.iconSitDownTest,
              ),
              (Gaps.largest + Gaps.large).spaceVertical,
              if (state.isTestFinished)
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
                    )),
              ),
              Gaps.largest.spaceVertical,
              RepetitionCounter(
                repetition: state.currentRepetition,
                totalRepetitions: Constants.totalRepetitions,
                progress: state.progress,
              ),
              if (!state.isTestFinished)
                Padding(
                  padding: Gaps.larger.paddingAll.copyWith(top: Gaps.largest),
                  child: SubmitButton(
                    onPressed: !state.isTestRunning
                        ? () => sitToStandBloc.add(const StartTestEvent())
                        : () =>
                            sitToStandBloc.add(StopTestEvent(userRef: userRef)),
                    title: !state.isTestRunning
                        ? S.current.btnTestStartText.toUpperCase()
                        : S.current.btnTestStopText.toUpperCase(),
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    titleColor: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
              Gaps.largest.spaceVertical,
              if (state.isTestFinished) ...[
                Padding(
                  padding: Gaps.larger.paddingHorizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
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
                              Text('${state.bestTime.toStringAsFixed(3)} ms',
                                  style: body1.copyWith(fontSize: 28)),
                            ],
                          ),
                          Column(
                            children: [
                              Text(S.current.lblVelocity, style: body1),
                              Text(
                                  '${state.bestVelocity.toStringAsFixed(2)} m/s',
                                  style: body1.copyWith(fontSize: 28)),
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
                        onPressed: () {},
                        child: Text(
                          S.current.lblSaveResults,
                          style: body1.copyWith(
                            fontWeight: FontWeight.w500,
                            color: ColorScheme.of(context).onPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]
            ],
          );
        },
      ),
    );
  }
}
