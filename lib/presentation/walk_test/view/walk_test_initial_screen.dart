import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/router/app_router.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../gen/assets.gen.dart';
import '../../../l10n/localizations_utils.dart';
import '../../utils/widgets/dropdown_widget.dart';
import '../../utils/widgets/submit_button.dart';
import '../../utils/widgets/test_layout_widget.dart';
import '../bloc/walk_test_bloc.dart';

@RoutePage()
class WalkTestInitialScreen extends StatelessWidget {
  const WalkTestInitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WalkTestInitialContent();
  }
}

class WalkTestInitialContent extends StatelessWidget {
  WalkTestInitialContent({super.key});

  final List<double> meterLengths = [15, 20, 30, 40, 400];
  @override
  Widget build(BuildContext context) {
    return TestLayoutWidget(
        headerIcon: Assets.icons.iconWalkTest,
        headerText: appLocalizations.walkTestTitleText,
        children: [
          Text(appLocalizations.walkTestInstruction, style: body1),
          Gaps.largest.spaceVertical,
          Align(
              alignment: Alignment.centerLeft,
              child:
                  Text(appLocalizations.walkTestInitialLblText, style: body1)),
          Gaps.largest.spaceVertical,
          BlocBuilder<WalkTestBloc, WalkTestState>(
            builder: (context, state) => DropdownWidget<double>(
                hintText: '',
                hintStyle: body1,
                errorText: state.errorText,
                onFocusChange: (hasFocus) {
                  context.read<WalkTestBloc>().add(WalkTestEvent.selectLength(
                      selectedLength: state.selectedLength,
                      shouldValidate: !hasFocus));
                },
                onGenerateLabel: (value) =>
                    appLocalizations.textFromMeter(value.round()),
                selectedValue: state.selectedLength,
                onChanged: (value) {
                  context.read<WalkTestBloc>().add(WalkTestEvent.selectLength(
                      selectedLength: value, shouldValidate: false));
                },
                values: meterLengths),
          ),
          Gaps.largest.spaceVertical,
          SubmitButton(
              isValid: context.watch<WalkTestBloc>().state.isValid,
              isLoading: context.watch<WalkTestBloc>().state.status ==
                  WalkTestStatus.loading,
              onPressed: () {
                context.router.push(const WalkTestRoute());
              },
              title: appLocalizations.btnContinue.toUpperCase(),
              backgroundColor: ColorScheme.of(context).primary,
              titleColor: white),
        ]);
  }
}
