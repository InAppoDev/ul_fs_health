import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
import '../../utils/widgets/feature_test_header.dart';
import '../../utils/widgets/repetition_counter.dart';
import '../../utils/widgets/simple_app_bar_widget.dart';
import '../../utils/widgets/submit_button.dart';

@RoutePage()
class SitToStandTestStartScreen extends StatelessWidget {
  const SitToStandTestStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SitToStandTestStartContent();
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
      body: Column(
        children: [
          FeatureTestHeader(
            title: S.current.sitToStandTestTitleText,
            leading: Assets.icons.iconSitDownTest,
          ),
          (Gaps.largest + Gaps.large).spaceVertical,
          const RepetitionCounter(repetition: 5),
          Padding(
            padding: Gaps.larger.paddingAll.copyWith(top: Gaps.largest),
            child: SubmitButton(
              onPressed: () async {},
              title: S.current.btnTestStopText.toUpperCase(),
              backgroundColor: Theme.of(context).colorScheme.secondary,
              titleColor: Theme.of(context).colorScheme.onSecondary,
            ),
          )
        ],
      ),
    );
  }
}
