import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/gaps.dart';
import '../../../../../core/extensions/number_extension.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../l10n/localizations_utils.dart';
import '../../../../core/extensions/list_extension.dart';
import '../../../auth/widgets/auth_guard_widget.dart';
import '../../../utils/widgets/dropdown_widget.dart';
import '../../../utils/widgets/simple_app_bar_widget.dart';
import '../../../utils/widgets/submit_button.dart';
import '../../bloc/questionnaire_bloc.dart';
import '../../utils/difficulty_level.dart';

@RoutePage()
class LEFSScreen extends StatelessWidget {
  const LEFSScreen({super.key, this.shouldAuthenticate = false});

  final bool shouldAuthenticate;

  @override
  Widget build(BuildContext context) {
    return LEFSContent(shouldAuthenticate: shouldAuthenticate);
  }
}

class LEFSContent extends StatefulWidget {
  const LEFSContent({super.key, required this.shouldAuthenticate});

  @override
  State<LEFSContent> createState() => LEFSContentState();

  final bool shouldAuthenticate;
}

class LEFSContentState extends State<LEFSContent> {
  final List<String> _questions = [
    appLocalizations.lefsQuestionText1,
    appLocalizations.lefsQuestionText2,
    appLocalizations.lefsQuestionText3,
    appLocalizations.lefsQuestionText4,
    appLocalizations.lefsQuestionText5,
    appLocalizations.lefsQuestionText6,
    appLocalizations.lefsQuestionText7,
    appLocalizations.lefsQuestionText8,
    appLocalizations.lefsQuestionText9,
    appLocalizations.lefsQuestionText10,
    appLocalizations.lefsQuestionText11,
    appLocalizations.lefsQuestionText12,
    appLocalizations.lefsQuestionText13,
    appLocalizations.lefsQuestionText14,
    appLocalizations.lefsQuestionText15,
    appLocalizations.lefsQuestionText16,
    appLocalizations.lefsQuestionText17,
    appLocalizations.lefsQuestionText18,
    appLocalizations.lefsQuestionText19,
    appLocalizations.lefsQuestionText20,
  ];

  @override
  void initState() {
    super.initState();
    context.read<QuestionnaireBloc>().add(QuestionnaireEvent.lefsInitial(Map.fromIterables(
        _questions.mapIndexed((index, e) => (index + 1).toString()),
        _questions.map((e) => DifficultyLevel.none))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Gaps.medium.spaceVertical,
                      Text(appLocalizations.lefsHeaderText,
                          style: header1.copyWith(fontSize: 16, height: 1.5)),
                      (Gaps.medium + Gaps.smaller).spaceVertical,
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(text: '${appLocalizations.lefsDescription2}\n\n', style: body1),
                        TextSpan(text: appLocalizations.lefsDescription3, style: body1),
                        TextSpan(
                            text: appLocalizations.lefsDescription4,
                            style: body1.copyWith(fontWeight: FontWeight.w700)),
                        TextSpan(text: appLocalizations.lefsDescription5, style: body1),
                        TextSpan(
                            text: appLocalizations.lefsDescription6,
                            style: body1.copyWith(fontWeight: FontWeight.w700)),
                        TextSpan(text: appLocalizations.lefsDescription7, style: body1),
                      ])),
                      (Gaps.medium + Gaps.smaller).spaceVertical,
                      ..._questions.mapIndexed((index, elem) => Padding(
                            padding: (Gaps.medium + Gaps.smaller).paddingBottom,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(flex: 5, child: Text('${index + 1}. $elem', style: body1)),
                                Expanded(
                                    flex: 3,
                                    child: BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                                      builder: (context, state) => DropdownWidget<DifficultyLevel>(
                                        selectedValue: state.lefsData[(index + 1).toString()],
                                        values: DifficultyLevel.values.reversed.toList(),
                                        onChanged: (value) {
                                          final Map<String, DifficultyLevel> data =
                                              Map.from(state.lefsData);
                                          data[(index + 1).toString()] =
                                              value ?? DifficultyLevel.none;
                                          context
                                              .read<QuestionnaireBloc>()
                                              .add(QuestionnaireEvent.lefsInitial(data));
                                        },
                                        onGenerateLabel: (e) => e.label,
                                        expandedPadding: (Gaps.largest + Gaps.small).paddingLeft,
                                      ),
                                    ))
                              ],
                            ),
                          )),
                      SubmitButton(
                          onPressed: () {
                            context.read<QuestionnaireBloc>().add(QuestionnaireEvent.resetErrors());
                            context.router.popUntilRoot();
                          },
                          title: appLocalizations.btnSaveContinueActionText,
                          backgroundColor: ColorScheme.of(context).primary,
                          titleColor: ColorScheme.of(context).onPrimary),
                      Gaps.large.spaceVertical
                    ],
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
