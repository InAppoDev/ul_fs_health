import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../l10n/localizations_utils.dart';
import '../../logic/user/user_bloc.dart';
import '../../utils/widgets/dropdown_widget.dart';
import '../../utils/widgets/submit_button.dart';
import '../../utils/widgets/text_input_widget.dart';
import '../bloc/questionnaire_bloc.dart';
import '../mock/gender_values.dart';
import '../validator/questionnaire_validator.dart';

@RoutePage()
class QuestionnaireScreen extends StatelessWidget {
  const QuestionnaireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuestionnaireBloc(),
      child: const QuestionnaireContent(),
    );
  }
}

class QuestionnaireContent extends StatefulWidget {
  const QuestionnaireContent({super.key});

  @override
  State<QuestionnaireContent> createState() => QuestionnaireContentState();
}

class QuestionnaireContentState extends State<QuestionnaireContent> {
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _smokerController = TextEditingController();
  final TextEditingController _drinkerController = TextEditingController();
  final TextEditingController _cholesterolController = TextEditingController();
  final TextEditingController _bloodSugarController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _ageController.addListener(() {
      context
          .read<QuestionnaireBloc>()
          .add(QuestionnaireEvent.onAgeChanged(age: _ageController.text, shouldValidate: false));
    });
    _heightController.addListener(() {
      context.read<QuestionnaireBloc>().add(QuestionnaireEvent.onHeightChanged(
          height: _heightController.text, shouldValidate: false));
    });
    _weightController.addListener(() {
      context.read<QuestionnaireBloc>().add(QuestionnaireEvent.onWeightChanged(
          weight: _weightController.text, shouldValidate: false));
    });
    _smokerController.addListener(() {
      context.read<QuestionnaireBloc>().add(QuestionnaireEvent.onSmokerStatusChanged(
          smokerStatus: _smokerController.text, shouldValidate: false));
    });
    _drinkerController.addListener(() {
      context.read<QuestionnaireBloc>().add(QuestionnaireEvent.onDrinkerStatusChanged(
          drinkerStatus: _drinkerController.text, shouldValidate: false));
    });
    _cholesterolController.addListener(() {
      context.read<QuestionnaireBloc>().add(QuestionnaireEvent.onCholesterolStatusChanged(
          cholesterolStatus: _cholesterolController.text, shouldValidate: false));
    });
    _bloodSugarController.addListener(() {
      context.read<QuestionnaireBloc>().add(QuestionnaireEvent.onBloodSugarStatusChanged(
          bloodSugarStatus: _bloodSugarController.text, shouldValidate: false));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocListener<UserBloc, UserState>(
          listener: (context, state) {
            if (state.status == UserStatus.saved) {
              context.router.pushNamed('/home');
            } else if (state.status == UserStatus.failure) {
              context.showSnackBarMessage(state.errorMessage ?? '');
            }
          },
          child: Padding(
            padding: Gaps.large.paddingHorizontal,
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Gaps.extraLarger.spaceVertical,
                    Text(appLocalizations.lblAppName, style: header1),
                    Gaps.larger.spaceVertical,
                    Text(
                      appLocalizations.questHeaderTitle,
                      style: header1.copyWith(fontSize: Constants.headerLargeTextSize),
                      textAlign: TextAlign.center,
                    ),
                    Gaps.smaller.spaceVertical,
                    Text(appLocalizations.questHeaderSubTitle,
                        style: body1.copyWith(overflow: TextOverflow.clip),
                        textAlign: TextAlign.center),
                    Gaps.largest.spaceVertical,
                    Text(appLocalizations.questBasicInfoHeader,
                        style: header1.copyWith(fontSize: Constants.headerLargeTextSize),
                        textAlign: TextAlign.center),
                    Gaps.large.spaceVertical,
                    BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                        builder: (context, state) => DropdownWidget(
                            validator: QuestionnaireValidator.validateGender,
                            errorText: state.genderError,
                            values: genderValues,
                            selectedValue: state.basicInfo.gender,
                            placeholder: appLocalizations.genderPlaceholder,
                            onChanged: (selectedValue) {
                              context.read<QuestionnaireBloc>().add(
                                  QuestionnaireEvent.onGenderChanged(
                                      selectedGender: selectedValue, shouldValidate: false));
                            })),
                    Gaps.large.spaceVertical,
                    BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                        builder: (context, state) => TextInputWidget(
                              errorText: state.ageError,
                              controller: _ageController,
                              onFocusChange: (hasFocus) {
                                context.read<QuestionnaireBloc>().add(
                                    QuestionnaireEvent.onAgeChanged(
                                        age: _ageController.text, shouldValidate: !hasFocus));
                              },
                              hintText: appLocalizations.agePlaceHolder,
                            )),
                    Gaps.large.spaceVertical,
                    BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                        builder: (context, state) => TextInputWidget(
                              errorText: state.heightError,
                              controller: _heightController,
                              onFocusChange: (hasFocus) {
                                context.read<QuestionnaireBloc>().add(
                                    QuestionnaireEvent.onHeightChanged(
                                        height: _heightController.text, shouldValidate: !hasFocus));
                              },
                              hintText: appLocalizations.heightPlaceHolder,
                            )),
                    Gaps.large.spaceVertical,
                    BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                        builder: (context, state) => TextInputWidget(
                              errorText: state.weightError,
                              controller: _weightController,
                              onFocusChange: (hasFocus) {
                                context.read<QuestionnaireBloc>().add(
                                    QuestionnaireEvent.onWeightChanged(
                                        weight: _weightController.text, shouldValidate: !hasFocus));
                              },
                              hintText: appLocalizations.weightPlaceHolder,
                            )),
                    Gaps.largest.spaceVertical,
                    Text(appLocalizations.questHealthInfoHeader,
                        style: header1.copyWith(fontSize: Constants.headerLargeTextSize),
                        textAlign: TextAlign.center),
                    Gaps.large.spaceVertical,
                    BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                        builder: (context, state) => TextInputWidget(
                              errorText: state.smokerStatusError,
                              controller: _smokerController,
                              onFocusChange: (hasFocus) {
                                context.read<QuestionnaireBloc>().add(
                                    QuestionnaireEvent.onSmokerStatusChanged(
                                        smokerStatus: _smokerController.text,
                                        shouldValidate: !hasFocus));
                              },
                              hintText: appLocalizations.smokerPlaceHolder,
                            )),
                    Gaps.large.spaceVertical,
                    BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                        builder: (context, state) => TextInputWidget(
                              errorText: state.drinkerStatusError,
                              controller: _drinkerController,
                              onFocusChange: (hasFocus) {
                                context.read<QuestionnaireBloc>().add(
                                    QuestionnaireEvent.onDrinkerStatusChanged(
                                        drinkerStatus: _drinkerController.text,
                                        shouldValidate: !hasFocus));
                              },
                              hintText: appLocalizations.drinkerPlaceHolder,
                            )),
                    Gaps.large.spaceVertical,
                    BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                        builder: (context, state) => TextInputWidget(
                              errorText: state.cholesterolStatusError,
                              controller: _cholesterolController,
                              onFocusChange: (hasFocus) {
                                context.read<QuestionnaireBloc>().add(
                                    QuestionnaireEvent.onCholesterolStatusChanged(
                                        cholesterolStatus: _cholesterolController.text,
                                        shouldValidate: !hasFocus));
                              },
                              hintText: appLocalizations.cholesterolPlaceHolder,
                            )),
                    Gaps.large.spaceVertical,
                    BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                        builder: (context, state) => TextInputWidget(
                              errorText: state.bloodSugarStatusError,
                              controller: _bloodSugarController,
                              onFocusChange: (hasFocus) {
                                context.read<QuestionnaireBloc>().add(
                                    QuestionnaireEvent.onBloodSugarStatusChanged(
                                        bloodSugarStatus: _bloodSugarController.text,
                                        shouldValidate: !hasFocus));
                              },
                              hintText: appLocalizations.bloodSugarPlaceHolder,
                            )),
                    Gaps.large.spaceVertical,
                    BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                        builder: (context, state) => SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: SubmitButton(
                              isValid: state.isFormValid,
                              titleColor: ColorScheme.of(context).surface,
                              onPressed: () {},
                              title: appLocalizations.btnQuestSubmit,
                              backgroundColor: ColorScheme.of(context).primary,
                              isLoading:
                                  context.watch<UserBloc>().state.status == UserStatus.loading ||
                                      context.watch<QuestionnaireBloc>().state.status ==
                                          QuestionnaireStatus.loading,
                            ))),
                    Gaps.medium.spaceVertical
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
