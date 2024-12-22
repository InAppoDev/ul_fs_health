// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Login`
  String get lblLogin {
    return Intl.message(
      'Login',
      name: 'lblLogin',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get lblSignUp {
    return Intl.message(
      'Sign up',
      name: 'lblSignUp',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get btnCreateAccount {
    return Intl.message(
      'Create account',
      name: 'btnCreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get lblOr {
    return Intl.message(
      'or',
      name: 'lblOr',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get btnContinue {
    return Intl.message(
      'Continue',
      name: 'btnContinue',
      desc: '',
      args: [],
    );
  }

  /// `your password`
  String get hintYourPassword {
    return Intl.message(
      'your password',
      name: 'hintYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `email@domain.com`
  String get hintYourEmail {
    return Intl.message(
      'email@domain.com',
      name: 'hintYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Forgotten password?`
  String get lblForgottenPassword {
    return Intl.message(
      'Forgotten password?',
      name: 'lblForgottenPassword',
      desc: '',
      args: [],
    );
  }

  /// `repeat your password`
  String get hintrepeatPassword {
    return Intl.message(
      'repeat your password',
      name: 'hintrepeatPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email is required`
  String get lblEmailRequire {
    return Intl.message(
      'Email is required',
      name: 'lblEmailRequire',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email address`
  String get lblValidEmail {
    return Intl.message(
      'Enter a valid email address',
      name: 'lblValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get lblRequirePassword {
    return Intl.message(
      'Password is required',
      name: 'lblRequirePassword',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get lblPasswordLength {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'lblPasswordLength',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your password`
  String get lblConfirmPassword {
    return Intl.message(
      'Please confirm your password',
      name: 'lblConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get lblPasswordDontMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'lblPasswordDontMatch',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email and password to create \n an account. Confirmation mail will be sent to \n your email.`
  String get lblEnterPassword {
    return Intl.message(
      'Enter your email and password to create \n an account. Confirmation mail will be sent to \n your email.',
      name: 'lblEnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Unable to sign up`
  String get lblUnableSignup {
    return Intl.message(
      'Unable to sign up',
      name: 'lblUnableSignup',
      desc: '',
      args: [],
    );
  }

  /// `Login failed`
  String get lblLoginFailed {
    return Intl.message(
      'Login failed',
      name: 'lblLoginFailed',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email and password to enter app.`
  String get lblEmailPassword {
    return Intl.message(
      'Enter your email and password to enter app.',
      name: 'lblEmailPassword',
      desc: '',
      args: [],
    );
  }

  /// `Not yet registered? Sign up with your email`
  String get lblNotYetRegistered {
    return Intl.message(
      'Not yet registered? Sign up with your email',
      name: 'lblNotYetRegistered',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service`
  String get lblTermsService {
    return Intl.message(
      'Terms of Service',
      name: 'lblTermsService',
      desc: '',
      args: [],
    );
  }

  /// `By clicking Create account, you agree to our`
  String get lblClickCreateAccount {
    return Intl.message(
      'By clicking Create account, you agree to our',
      name: 'lblClickCreateAccount',
      desc: '',
      args: [],
    );
  }

  /// ` and  `
  String get lblAnd {
    return Intl.message(
      ' and  ',
      name: 'lblAnd',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get lblPrivacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'lblPrivacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `By clicking continue, you agree to our`
  String get lblYouAgree {
    return Intl.message(
      'By clicking continue, you agree to our',
      name: 'lblYouAgree',
      desc: '',
      args: [],
    );
  }

  /// `Ul Fs Health`
  String get lblAppName {
    return Intl.message(
      'Ul Fs Health',
      name: 'lblAppName',
      desc: '',
      args: [],
    );
  }

  /// `Fill this questionarre`
  String get questHeaderTitle {
    return Intl.message(
      'Fill this questionarre',
      name: 'questHeaderTitle',
      desc: '',
      args: [],
    );
  }

  /// `In order to give the best results, our app needs detailed information about your personal and medical conditions.`
  String get questHeaderSubTitle {
    return Intl.message(
      'In order to give the best results, our app needs detailed information about your personal and medical conditions.',
      name: 'questHeaderSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Basic information`
  String get questBasicInfoHeader {
    return Intl.message(
      'Basic information',
      name: 'questBasicInfoHeader',
      desc: '',
      args: [],
    );
  }

  /// `Health information`
  String get questHealthInfoHeader {
    return Intl.message(
      'Health information',
      name: 'questHealthInfoHeader',
      desc: '',
      args: [],
    );
  }

  /// `Select your gender`
  String get genderPlaceholder {
    return Intl.message(
      'Select your gender',
      name: 'genderPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Enter your age`
  String get agePlaceHolder {
    return Intl.message(
      'Enter your age',
      name: 'agePlaceHolder',
      desc: '',
      args: [],
    );
  }

  /// `Enter your height (in centimeters)`
  String get heightPlaceHolder {
    return Intl.message(
      'Enter your height (in centimeters)',
      name: 'heightPlaceHolder',
      desc: '',
      args: [],
    );
  }

  /// `Enter your weight (in kilograms)`
  String get weightPlaceHolder {
    return Intl.message(
      'Enter your weight (in kilograms)',
      name: 'weightPlaceHolder',
      desc: '',
      args: [],
    );
  }

  /// `Are you an active smoker?`
  String get smokerPlaceHolder {
    return Intl.message(
      'Are you an active smoker?',
      name: 'smokerPlaceHolder',
      desc: '',
      args: [],
    );
  }

  /// `Are you an alcohol drinker?`
  String get drinkerPlaceHolder {
    return Intl.message(
      'Are you an alcohol drinker?',
      name: 'drinkerPlaceHolder',
      desc: '',
      args: [],
    );
  }

  /// `Do you have increased cholesterol?`
  String get cholesterolPlaceHolder {
    return Intl.message(
      'Do you have increased cholesterol?',
      name: 'cholesterolPlaceHolder',
      desc: '',
      args: [],
    );
  }

  /// `Do you have increased blood sugar?`
  String get bloodSugarPlaceHolder {
    return Intl.message(
      'Do you have increased blood sugar?',
      name: 'bloodSugarPlaceHolder',
      desc: '',
      args: [],
    );
  }

  /// `Save and continue`
  String get btnQuestSubmit {
    return Intl.message(
      'Save and continue',
      name: 'btnQuestSubmit',
      desc: '',
      args: [],
    );
  }

  /// `Please select your gender`
  String get genderRequiredErrorText {
    return Intl.message(
      'Please select your gender',
      name: 'genderRequiredErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Please type your age`
  String get ageRequiredErrorText {
    return Intl.message(
      'Please type your age',
      name: 'ageRequiredErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Please type your weight`
  String get weightRequiredErrorText {
    return Intl.message(
      'Please type your weight',
      name: 'weightRequiredErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Please type your height`
  String get heightRequiredErrorText {
    return Intl.message(
      'Please type your height',
      name: 'heightRequiredErrorText',
      desc: '',
      args: [],
    );
  }

  /// `The field must be filled`
  String get smokerStatusRequiredErrorText {
    return Intl.message(
      'The field must be filled',
      name: 'smokerStatusRequiredErrorText',
      desc: '',
      args: [],
    );
  }

  /// `The field must be filled`
  String get drinkerStatusRequiredErrorText {
    return Intl.message(
      'The field must be filled',
      name: 'drinkerStatusRequiredErrorText',
      desc: '',
      args: [],
    );
  }

  /// `The field must be filled`
  String get cholesterolStatusRequiredErrorText {
    return Intl.message(
      'The field must be filled',
      name: 'cholesterolStatusRequiredErrorText',
      desc: '',
      args: [],
    );
  }

  /// `The field must be filled`
  String get bloodSugarStatusRequiredErrorText {
    return Intl.message(
      'The field must be filled',
      name: 'bloodSugarStatusRequiredErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get menuDashboardText {
    return Intl.message(
      'Dashboard',
      name: 'menuDashboardText',
      desc: '',
      args: [],
    );
  }

  /// `My Results`
  String get menuResultsText {
    return Intl.message(
      'My Results',
      name: 'menuResultsText',
      desc: '',
      args: [],
    );
  }

  /// `Questionairre`
  String get menuQuestionnaireText {
    return Intl.message(
      'Questionairre',
      name: 'menuQuestionnaireText',
      desc: '',
      args: [],
    );
  }

  /// `My profile`
  String get menuProfileText {
    return Intl.message(
      'My profile',
      name: 'menuProfileText',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get menuLogoutText {
    return Intl.message(
      'Log out',
      name: 'menuLogoutText',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to {appName}!`
  String welcomeAppNameText(String appName) {
    return Intl.message(
      'Welcome to $appName!',
      name: 'welcomeAppNameText',
      desc: 'welcome text for application',
      args: [appName],
    );
  }

  /// `In order to give the best results, our app needs detailed information about your personal and medical conditions.`
  String get welcomeAppDescriptionText {
    return Intl.message(
      'In order to give the best results, our app needs detailed information about your personal and medical conditions.',
      name: 'welcomeAppDescriptionText',
      desc: '',
      args: [],
    );
  }

  /// `6 Minute Walk Test`
  String get walkTestTitleText {
    return Intl.message(
      '6 Minute Walk Test',
      name: 'walkTestTitleText',
      desc: '',
      args: [],
    );
  }

  /// `Simple “Sit-to-Stand” test, which you can do anywhere. All you need is an ordinary chair or similar surface, you can sit on normally.`
  String get walkTestDescriptionText {
    return Intl.message(
      'Simple “Sit-to-Stand” test, which you can do anywhere. All you need is an ordinary chair or similar surface, you can sit on normally.',
      name: 'walkTestDescriptionText',
      desc: '',
      args: [],
    );
  }

  /// `Sit-to-Stand Test`
  String get sitToStandTestTitleText {
    return Intl.message(
      'Sit-to-Stand Test',
      name: 'sitToStandTestTitleText',
      desc: '',
      args: [],
    );
  }

  /// `Simple “Sit-to-Stand” test, which you can do anywhere. All you need is an ordinary chair or similar surface, you can sit on normally.`
  String get sitToStandTestDescriptionText {
    return Intl.message(
      'Simple “Sit-to-Stand” test, which you can do anywhere. All you need is an ordinary chair or similar surface, you can sit on normally.',
      name: 'sitToStandTestDescriptionText',
      desc: '',
      args: [],
    );
  }

  /// `Start Test`
  String get btnTestStartText {
    return Intl.message(
      'Start Test',
      name: 'btnTestStartText',
      desc: '',
      args: [],
    );
  }

  /// `Stop Test`
  String get btnTestStopText {
    return Intl.message(
      'Stop Test',
      name: 'btnTestStopText',
      desc: '',
      args: [],
    );
  }

  /// `Test instructions`
  String get btnTestInstructionsText {
    return Intl.message(
      'Test instructions',
      name: 'btnTestInstructionsText',
      desc: '',
      args: [],
    );
  }

  /// `sound signal`
  String get lblSoundSignal {
    return Intl.message(
      'sound signal',
      name: 'lblSoundSignal',
      desc: '',
      args: [],
    );
  }

  /// `Make sure you have a chair and enough place to stand up.`
  String get lblSitToStandPageTitle {
    return Intl.message(
      'Make sure you have a chair and enough place to stand up.',
      name: 'lblSitToStandPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `When you are ready and in sitting position press `
  String get lblSitToStandPageDescription1 {
    return Intl.message(
      'When you are ready and in sitting position press ',
      name: 'lblSitToStandPageDescription1',
      desc: '',
      args: [],
    );
  }

  /// ` and put the phone in your pocket. `
  String get lblSitToStandPageDescription2 {
    return Intl.message(
      ' and put the phone in your pocket. ',
      name: 'lblSitToStandPageDescription2',
      desc: '',
      args: [],
    );
  }

  /// ` will let you know when you can start with stand-up sit-down test.`
  String get lblSitToStandPageDescription3 {
    return Intl.message(
      ' will let you know when you can start with stand-up sit-down test.',
      name: 'lblSitToStandPageDescription3',
      desc: '',
      args: [],
    );
  }

  /// `After {count} repetitions, `
  String lblSitToStandAlertInfo1(Object count) {
    return Intl.message(
      'After $count repetitions, ',
      name: 'lblSitToStandAlertInfo1',
      desc: '',
      args: [count],
    );
  }

  /// ` will alert you that the test is finished.`
  String get lblSitToStandAlertInfo2 {
    return Intl.message(
      ' will alert you that the test is finished.',
      name: 'lblSitToStandAlertInfo2',
      desc: '',
      args: [],
    );
  }

  /// `First you need to define length of one distance. Please note that recommended distance is 40 meters but other options are also viable.`
  String get walkTestInstruction {
    return Intl.message(
      'First you need to define length of one distance. Please note that recommended distance is 40 meters but other options are also viable.',
      name: 'walkTestInstruction',
      desc: '',
      args: [],
    );
  }

  /// `Great, you are all set to start the test!`
  String get walkTestInitialText {
    return Intl.message(
      'Great, you are all set to start the test!',
      name: 'walkTestInitialText',
      desc: '',
      args: [],
    );
  }

  /// `Make sure you have a chair and enough place to stand up.`
  String get sitToDownTestInitialText {
    return Intl.message(
      'Make sure you have a chair and enough place to stand up.',
      name: 'sitToDownTestInitialText',
      desc: '',
      args: [],
    );
  }

  /// `START TEST`
  String get testStartText {
    return Intl.message(
      'START TEST',
      name: 'testStartText',
      desc: '',
      args: [],
    );
  }

  /// `When you are ready press `
  String get testInstructionFirstPartText {
    return Intl.message(
      'When you are ready press ',
      name: 'testInstructionFirstPartText',
      desc: '',
      args: [],
    );
  }

  /// ` and put the phone in your pocket. `
  String get testInstructionSecondPartText {
    return Intl.message(
      ' and put the phone in your pocket. ',
      name: 'testInstructionSecondPartText',
      desc: '',
      args: [],
    );
  }

  /// `Sound signal`
  String get testInstructionBoldText {
    return Intl.message(
      'Sound signal',
      name: 'testInstructionBoldText',
      desc: '',
      args: [],
    );
  }

  /// `sound signal`
  String get testInstructionBoldLowerText {
    return Intl.message(
      'sound signal',
      name: 'testInstructionBoldLowerText',
      desc: '',
      args: [],
    );
  }

  /// ` will let you know when you can start walking.`
  String get testInstructionWalkThirdPart {
    return Intl.message(
      ' will let you know when you can start walking.',
      name: 'testInstructionWalkThirdPart',
      desc: '',
      args: [],
    );
  }

  /// `After `
  String get testInstructionAlertFirstText {
    return Intl.message(
      'After ',
      name: 'testInstructionAlertFirstText',
      desc: '',
      args: [],
    );
  }

  /// ` will alert you that the test is finished.`
  String get testInstructionAlertSecondText {
    return Intl.message(
      ' will alert you that the test is finished.',
      name: 'testInstructionAlertSecondText',
      desc: '',
      args: [],
    );
  }

  /// `{minute} minutes pass, `
  String walkTestDelayText(int minute) {
    return Intl.message(
      '$minute minutes pass, ',
      name: 'walkTestDelayText',
      desc: 'text for walk test',
      args: [minute],
    );
  }

  /// `PAUSE TEST`
  String get pauseTestUpperText {
    return Intl.message(
      'PAUSE TEST',
      name: 'pauseTestUpperText',
      desc: '',
      args: [],
    );
  }

  /// `PAUSE`
  String get pauseText {
    return Intl.message(
      'PAUSE',
      name: 'pauseText',
      desc: '',
      args: [],
    );
  }

  /// ` and resume with the test when you are feeling better.`
  String get walkTestAdditionalInformationSecondPartText {
    return Intl.message(
      ' and resume with the test when you are feeling better.',
      name: 'walkTestAdditionalInformationSecondPartText',
      desc: '',
      args: [],
    );
  }

  /// `*If you feel any dizziness or tiredness during the test, you can press `
  String get walkTestAdditionalInfoFirstPartText {
    return Intl.message(
      '*If you feel any dizziness or tiredness during the test, you can press ',
      name: 'walkTestAdditionalInfoFirstPartText',
      desc: '',
      args: [],
    );
  }

  /// `{text}\n`
  String textWithNewLine(Object text) {
    return Intl.message(
      '$text\n',
      name: 'textWithNewLine',
      desc: 'text with new line',
      args: [text],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
