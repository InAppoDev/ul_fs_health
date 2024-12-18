import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_fonts.dart';
import '../../../l10n/localizations_utils.dart';
import '../../widgets/custom_dropdown.dart';
import '../../widgets/custom_text_field.dart';
import '../bloc/questionnaire_bloc.dart';
import '../bloc/questionnaire_event.dart';
import '../bloc/questionnaire_state.dart';

@RoutePage()
class QuestionnaireScreen extends StatelessWidget {
  const QuestionnaireScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuestionnaireBloc(),
      child: QuestionnaireContent(),
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

  final List<String> genderValues = ['male', 'female'];

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
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 30, right: 30, bottom: 10),
        child: Center(
          child: ListView(
            children: [
              Text(
                appLocalizations.questHeaderTitle,
                style: FontHelper.headerText,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 2),
              Text(appLocalizations.questHeaderSubTitle,
                  style: FontHelper.contentText.copyWith(overflow: TextOverflow.clip),
                  textAlign: TextAlign.center),
              const SizedBox(height: 37),
              Text(appLocalizations.questBasicInfoHeader,
                  style: FontHelper.headerText, textAlign: TextAlign.center),
              const SizedBox(height: 17),
              BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                  builder: (context, state) => CustomDropdown(
                      errorText: state.genderError,
                      onFocusChange: (hasFocus) {
                        // TODO Hovsep understand focuses here
                        // context.read<QuestionnaireBloc>().add(
                        //     QuestionnaireEvent.onGenderChanged(selectedGender: state.basicInfo.gender, shouldValidate: !hasFocus));
                      },
                      values: genderValues,
                      selectedValue: state.basicInfo.gender,
                      placeholder: appLocalizations.genderPlaceholder,
                      onChanged: (selectedValue) {
                        context.read<QuestionnaireBloc>().add(
                            QuestionnaireEvent.onGenderChanged(selectedGender: selectedValue, shouldValidate: false));
                      })),
              const SizedBox(height: 17),
              BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                  builder: (context, state) => CustomTextField(
                        errorText: state.ageError,
                        errorStyle: TextStyle(color: lightColorScheme.error),
                        controller: _ageController,
                        onFocusChange: (hasFocus) {
                          context.read<QuestionnaireBloc>().add(QuestionnaireEvent.onAgeChanged(
                              age: _ageController.text, shouldValidate: !hasFocus));
                        },
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightColorScheme.error)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        hintText: appLocalizations.agePlaceHolder,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      )),
              const SizedBox(height: 17),
              BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                  builder: (context, state) => CustomTextField(
                        errorText: state.heightError,
                        controller: _heightController,
                        onFocusChange: (hasFocus) {
                          context.read<QuestionnaireBloc>().add(
                              QuestionnaireEvent.onHeightChanged(
                                  height: _heightController.text, shouldValidate: !hasFocus));
                        },
                        hintText: appLocalizations.heightPlaceHolder,
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightColorScheme.error)),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightColorScheme.error)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      )),
              const SizedBox(height: 17),
              BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                  builder: (context, state) => CustomTextField(
                        errorText: state.weightError,
                        controller: _weightController,
                        onFocusChange: (hasFocus) {
                          context.read<QuestionnaireBloc>().add(
                              QuestionnaireEvent.onWeightChanged(
                                  weight: _weightController.text, shouldValidate: !hasFocus));
                        },
                        hintText: appLocalizations.weightPlaceHolder,
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightColorScheme.error)),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightColorScheme.error)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      )),
              const SizedBox(height: 32),
              Text(appLocalizations.questHealthInfoHeader,
                  style: FontHelper.headerText, textAlign: TextAlign.center),
              const SizedBox(height: 17),
              BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                  builder: (context, state) => CustomTextField(
                        errorText: state.smokerStatusError,
                        controller: _smokerController,
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightColorScheme.error)),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightColorScheme.error)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        onFocusChange: (hasFocus) {
                          context.read<QuestionnaireBloc>().add(
                              QuestionnaireEvent.onSmokerStatusChanged(
                                  smokerStatus: _smokerController.text,
                                  shouldValidate: !hasFocus));
                        },
                        hintText: appLocalizations.smokerPlaceHolder,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      )),
              const SizedBox(height: 17),
              BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                  builder: (context, state) => CustomTextField(
                        errorText: state.drinkerStatusError,
                        controller: _drinkerController,
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightColorScheme.error)),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightColorScheme.error)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        onFocusChange: (hasFocus) {
                          context.read<QuestionnaireBloc>().add(
                              QuestionnaireEvent.onDrinkerStatusChanged(
                                  drinkerStatus: _drinkerController.text,
                                  shouldValidate: !hasFocus));
                        },
                        hintText: appLocalizations.drinkerPlaceHolder,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      )),
              const SizedBox(height: 17),
              BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                  builder: (context, state) => CustomTextField(
                        errorText: state.cholesterolStatusError,
                        controller: _cholesterolController,
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightColorScheme.error)),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightColorScheme.error)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        onFocusChange: (hasFocus) {
                          context.read<QuestionnaireBloc>().add(
                              QuestionnaireEvent.onCholesterolStatusChanged(
                                  cholesterolStatus: _cholesterolController.text,
                                  shouldValidate: !hasFocus));
                        },
                        hintText: appLocalizations.cholesterolPlaceHolder,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      )),
              const SizedBox(height: 17),
              BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                  builder: (context, state) => CustomTextField(
                        errorText: state.bloodSugarStatusError,
                        controller: _bloodSugarController,
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightColorScheme.error)),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightColorScheme.error)),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: defaultBtnBorderColor)),
                        onFocusChange: (hasFocus) {
                          context.read<QuestionnaireBloc>().add(
                              QuestionnaireEvent.onBloodSugarStatusChanged(
                                  bloodSugarStatus: _bloodSugarController.text,
                                  shouldValidate: !hasFocus));
                        },
                        hintText: appLocalizations.bloodSugarPlaceHolder,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      )),
              const SizedBox(height: 16),
              BlocBuilder<QuestionnaireBloc, QuestionnaireState>(
                  builder: (context, state) => ElevatedButton(
                      style: ButtonStyle(
                          shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                          padding:
                              const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 10)),
                          backgroundColor: WidgetStatePropertyAll(state.isFormValid
                              ? lightColorScheme.primary
                              : lightColorScheme.secondary)),
                      onPressed: () {},
                      child: Text(appLocalizations.btnQuestSubmit,
                          style: state.isFormValid
                              ? FontHelper.defaultBtnText
                              : FontHelper.defaultBtnText.copyWith(color: defaultTextColor))))
            ],
          ),
        ),
      ),
    );
  }
}
