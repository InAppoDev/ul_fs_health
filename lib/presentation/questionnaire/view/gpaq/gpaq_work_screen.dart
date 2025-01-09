import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/gaps.dart';
import '../../../../../core/extensions/number_extension.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../l10n/localizations_utils.dart';
import '../../../auth/widgets/auth_guard_widget.dart';
import '../../../utils/formatters/number_pad_start_formatter.dart';
import '../../../utils/widgets/dropdown_widget.dart';
import '../../../utils/widgets/row_actions_widget.dart';
import '../../../utils/widgets/simple_app_bar_widget.dart';
import '../../../utils/widgets/text_input_widget.dart';
import '../../bloc/questionnaire_bloc.dart';

@RoutePage()
class GPAQWorkScreen extends StatelessWidget {
  const GPAQWorkScreen({super.key, this.shouldAuthenticate = false});

  final bool shouldAuthenticate;

  @override
  Widget build(BuildContext context) {
    context.read<QuestionnaireBloc>().add(QuestionnaireEvent.validateWorkScreen());
    return GPAQWorkContent(shouldAuthenticate: shouldAuthenticate);
  }
}

class GPAQWorkContent extends StatelessWidget {
  GPAQWorkContent({super.key, required this.shouldAuthenticate});

  final bool shouldAuthenticate;
  final TextEditingController _hourController = TextEditingController();
  final TextEditingController _minuteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: RowActionsWidget(
          isRightValid: context.watch<QuestionnaireBloc>().state.isNextValid,
          contentPadding: Gaps.largest.paddingAll,
          leftTitle: appLocalizations.btnBackActionText,
          rightTitle: appLocalizations.btnNextActionText,
          onLeftPress: () => context.router.maybePop(),
          onRightPress: () {},
          leftTitleColor: ColorScheme.of(context).onSecondary,
          rightTitleColor: ColorScheme.of(context).onPrimary,
          leftBackgroundColor: ColorScheme.of(context).secondary,
          rightBackgroundColor: ColorScheme.of(context).primary),
      appBar: SimpleAppBarWidget(
        showBackButton: shouldAuthenticate,
        onInfoPress: () {},
      ),
      body: SingleChildScrollView(
        child: Center(
          child: AuthGuardWidget(
              isAuthRoute: !shouldAuthenticate,
              child: Center(
                child: Padding(
                  padding: (Gaps.largest + Gaps.small).paddingHorizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gaps.large.spaceVertical,
                      Text(appLocalizations.gpaqWorkHeaderText,
                          style: header1.copyWith(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              height: 1.4,
                              letterSpacing: -2)),
                      Gaps.larger.spaceVertical,
                      Text(appLocalizations.gpaqWorkDescription,
                          style: body1, textAlign: TextAlign.justify),
                      Gaps.medium.spaceVertical,
                      RowActionsWidget(
                          leftTitle: appLocalizations.btnActionYes,
                          rightTitle: appLocalizations.btnActionNo,
                          onLeftPress: () => context
                              .read<QuestionnaireBloc>()
                              .add(QuestionnaireEvent.selectModerateActivity(true)),
                          onRightPress: () => context
                              .read<QuestionnaireBloc>()
                              .add(QuestionnaireEvent.selectModerateActivity(false)),
                          leftTitleColor:
                              context.watch<QuestionnaireBloc>().state.isModerateActivity == true
                                  ? ColorScheme.of(context).onPrimary
                                  : ColorScheme.of(context).onSecondary,
                          rightTitleColor:
                              context.watch<QuestionnaireBloc>().state.isModerateActivity == false
                                  ? ColorScheme.of(context).onPrimary
                                  : ColorScheme.of(context).onSecondary,
                          leftBackgroundColor:
                              context.watch<QuestionnaireBloc>().state.isModerateActivity == true
                                  ? ColorScheme.of(context).primary
                                  : ColorScheme.of(context).secondary,
                          rightBackgroundColor:
                              context.watch<QuestionnaireBloc>().state.isModerateActivity == false
                                  ? ColorScheme.of(context).primary
                                  : ColorScheme.of(context).secondary),
                      if (context.watch<QuestionnaireBloc>().state.isModerateActivity == null) ...[
                        Gaps.medium.spaceVertical,
                        Text(appLocalizations.gpaqRequiredChoice, style: body1.copyWith(color: ColorScheme.of(context).error)),
                        Gaps.medium.spaceVertical,
                      ],
                      Gaps.medium.spaceVertical,
                      Text(appLocalizations.gpaqWorkDescription2,
                          style: body1, textAlign: TextAlign.justify),
                      Gaps.medium.spaceVertical,
                      BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                        builder: (context, state) => DropdownWidget<int>(
                          selectedValue: state.workDaysInWeek,
                          values: List.generate(7, (index) => index + 1),
                          onChanged: (e) => context
                              .read<QuestionnaireBloc>()
                              .add(QuestionnaireEvent.selectWorkDaysInWeek(daysInWeek: e, shouldValidate: true)),
                          onFocusChange: (hasFocus) => context
                              .read<QuestionnaireBloc>()
                              .add(QuestionnaireEvent.selectWorkDaysInWeek(daysInWeek: state.workDaysInWeek, shouldValidate: !hasFocus)),
                          hintText: appLocalizations.gpaqWorkDaysHintText,
                          onGenerateLabel: (e) => '$e days',
                          errorText: state.workDaysError,
                        ),
                      ),
                      Gaps.medium.spaceVertical,
                      Text(appLocalizations.gpaqWorkDescription3,
                          style: body1, textAlign: TextAlign.justify),
                      Gaps.medium.spaceVertical,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 64,
                            child: TextInputWidget(
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(2)
                              ],
                              onFocusChange: (hasFocus) {

                              },
                              keyboardType: TextInputType.number,
                              centerText: true,
                              controller: _hourController,
                              hintText: "00"),
                          ),
                            Gaps.small.spaceHorizontal,
                            Text(":"),
                            Gaps.small.spaceHorizontal,
                            SizedBox(
                              width: 64,
                              child: TextInputWidget(
                                  onFocusChange: (hasFocus) {

                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(2)
                                  ],
                                  keyboardType: TextInputType.number,
                                  centerText: true,
                                  controller: _minuteController,
                                  hintText: '00'),
                            ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
