import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/gaps.dart';
import '../../../../../core/extensions/number_extension.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../l10n/localizations_utils.dart';
import '../../../auth/widgets/auth_guard_widget.dart';
import '../../../utils/widgets/row_actions_widget.dart';
import '../../../utils/widgets/simple_app_bar_widget.dart';
import '../../../utils/widgets/text_input_widget.dart';
import '../../bloc/questionnaire_bloc.dart';

@RoutePage()
class GPAQSedentaryScreen extends StatelessWidget {
  const GPAQSedentaryScreen({super.key, this.shouldAuthenticate = false});

  final bool shouldAuthenticate;

  @override
  Widget build(BuildContext context) {
    return GPAQSedentaryContent(shouldAuthenticate: shouldAuthenticate);
  }
}

class GPAQSedentaryContent extends StatefulWidget {
  const GPAQSedentaryContent({super.key, required this.shouldAuthenticate});

  final bool shouldAuthenticate;

  @override
  State<GPAQSedentaryContent> createState() => GPAQSedentaryContentState();
}

class GPAQSedentaryContentState extends State<GPAQSedentaryContent> {
  final TextEditingController _hourController = TextEditingController();
  final TextEditingController _minuteController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _hourController.addListener(() {
      final int hours = _hourController.text.isEmpty ? 0 : int.parse(_hourController.text);
      context.read<QuestionnaireBloc>().add(QuestionnaireEvent.selectHour(
          hours: hours, fillStatus: QuestionnaireFillStatus.sedentary));
    });
    _minuteController.addListener(() {
      final int minutes = _minuteController.text.isEmpty ? 0 : int.parse(_minuteController.text);
      context.read<QuestionnaireBloc>().add(QuestionnaireEvent.selectMinutes(
          minutes: minutes, fillStatus: QuestionnaireFillStatus.sedentary));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: RowActionsWidget(
          isRightValid: context.watch<QuestionnaireBloc>().state.isNextValid,
          contentPadding: Gaps.largest.paddingAll,
          leftTitle: appLocalizations.btnBackActionText,
          rightTitle: appLocalizations.btnNextActionText,
          onLeftPress: () => context.router.maybePop(),
          onRightPress: () => context.router.popUntilRoot(),
          leftTitleColor: ColorScheme.of(context).onSecondary,
          rightTitleColor: ColorScheme.of(context).onPrimary,
          leftBackgroundColor: ColorScheme.of(context).secondary,
          rightBackgroundColor: ColorScheme.of(context).primary),
      appBar: SimpleAppBarWidget(
        showBackButton: widget.shouldAuthenticate,
        onInfoPress: () {},
      ),
      body: SingleChildScrollView(
        child: Center(
          child: AuthGuardWidget(
              isAuthRoute: !widget.shouldAuthenticate,
              child: Center(
                child: Padding(
                  padding: (Gaps.largest + Gaps.small).paddingHorizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gaps.large.spaceVertical,
                      Text(appLocalizations.gpaqSedentaryHeaderText,
                          style: header1.copyWith(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              height: 1.4,
                              letterSpacing: -2)),
                      Gaps.larger.spaceVertical,
                      Text(appLocalizations.gpaqSedentaryDescription1,
                          style: body1, textAlign: TextAlign.justify),
                      Gaps.medium.spaceVertical,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 64,
                              child: BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                                builder: (context, state) => TextInputWidget(
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                      LengthLimitingTextInputFormatter(2)
                                    ],
                                    onFocusChange: (hasFocus) {
                                      if (!hasFocus) {
                                        final minutes = _hourController.text;
                                        final formattedText = minutes.padLeft(2, '0');
                                        if (formattedText != minutes) {
                                          _hourController.text = formattedText;
                                        }
                                      }
                                    },
                                    keyboardType: TextInputType.number,
                                    centerText: true,
                                    controller: _hourController,
                                    hintText: '00'),
                              )),
                          Gaps.small.spaceHorizontal,
                          Text(':', style: body1.copyWith(fontSize: 20)),
                          Gaps.small.spaceHorizontal,
                          SizedBox(
                            width: 64,
                            child: TextInputWidget(
                                onFocusChange: (hasFocus) {
                                  if (!hasFocus) {
                                    final minutes = _minuteController.text;
                                    final formattedText = minutes.padLeft(2, '0');
                                    if (formattedText != minutes) {
                                      _minuteController.text = formattedText;
                                    }
                                  }
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
