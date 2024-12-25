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
import '../../utils/widgets/text_builder_widget.dart';
import '../bloc/walk_test_bloc.dart';
import '../mock/meter_length_values.dart';

@RoutePage()
class WalkTestInitialScreen extends StatelessWidget {
  const WalkTestInitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => WalkTestBloc(),
        child: const WalkTestInitialContent());
  }
}

class WalkTestInitialContent extends StatelessWidget {
  const WalkTestInitialContent({super.key});

  @override
  Widget build(BuildContext context) {
    return TestLayoutWidget(
        headerIcon: Assets.icons.iconWalkTest,
        headerText: appLocalizations.walkTestTitleText,
        children: [
          const TextBuilderWidget(),
          Gaps.largest.spaceVertical,
          Align(
              alignment: Alignment.centerLeft,
              child: Text(appLocalizations.walkTestInitialLblText, style: body1)),
          DropdownWidget<String>(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return appLocalizations.walkSelectLengthErrorText;
              }
              return null;
            },
            selectedValue: context.watch<WalkTestBloc>().state.selectedLength,
            onChanged: (value) {
              context.read<WalkTestBloc>().add(WalkTestEvent.selectLength(value));
            },
              values: mockMeterLengths),
          Gaps.largest.spaceVertical,
          SubmitButton(
              isValid: context.watch<WalkTestBloc>().state.isValid,
              isLoading: context.watch<WalkTestBloc>().state.status == WalkTestStatus.loading,
              onPressed: () {
                context.router.push(const WalkTestRoute());
              },
              title: appLocalizations.btnContinue.toUpperCase(),
              backgroundColor: ColorScheme.of(context).primary,
              titleColor: white
          ),
        ]);
  }
}
