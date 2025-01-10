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

  /// `your new password`
  String get hintNewPassword {
    return Intl.message(
      'your new password',
      name: 'hintNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `repeat your new password`
  String get hintNewRepeatPassword {
    return Intl.message(
      'repeat your new password',
      name: 'hintNewRepeatPassword',
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

  /// `Questionnaire`
  String get questHeaderTitle {
    return Intl.message(
      'Questionnaire',
      name: 'questHeaderTitle',
      desc: '',
      args: [],
    );
  }

  /// `In order to give the best results, our app needs detailed information about your physical activity and health.`
  String get questInitialHeaderDescription {
    return Intl.message(
      'In order to give the best results, our app needs detailed information about your physical activity and health.',
      name: 'questInitialHeaderDescription',
      desc: '',
      args: [],
    );
  }

  /// `For this purpose, please fill out the following questionnaires:`
  String get questInitialHeaderDescription2 {
    return Intl.message(
      'For this purpose, please fill out the following questionnaires:',
      name: 'questInitialHeaderDescription2',
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

  /// `My Profile`
  String get profileHeaderText {
    return Intl.message(
      'My Profile',
      name: 'profileHeaderText',
      desc: '',
      args: [],
    );
  }

  /// `Here you can edit your login data and create your new password.`
  String get profileDescriptionText {
    return Intl.message(
      'Here you can edit your login data and create your new password.',
      name: 'profileDescriptionText',
      desc: '',
      args: [],
    );
  }

  /// `Save changes`
  String get btnSaveChangesText {
    return Intl.message(
      'Save changes',
      name: 'btnSaveChangesText',
      desc: '',
      args: [],
    );
  }

  /// `pause test`
  String get btnTestPauseText {
    return Intl.message(
      'pause test',
      name: 'btnTestPauseText',
      desc: '',
      args: [],
    );
  }

  /// `resume test`
  String get btnTestResumeText {
    return Intl.message(
      'resume test',
      name: 'btnTestResumeText',
      desc: '',
      args: [],
    );
  }

  /// `Remaining time:`
  String get remainingTimeText {
    return Intl.message(
      'Remaining time:',
      name: 'remainingTimeText',
      desc: '',
      args: [],
    );
  }

  /// `Test finished`
  String get testFinishedText {
    return Intl.message(
      'Test finished',
      name: 'testFinishedText',
      desc: '',
      args: [],
    );
  }

  /// `6 min walk test RESULT:`
  String get walkTestResultsText {
    return Intl.message(
      '6 min walk test RESULT:',
      name: 'walkTestResultsText',
      desc: '',
      args: [],
    );
  }

  /// `average speed:`
  String get walkTestAverageSpeedText {
    return Intl.message(
      'average speed:',
      name: 'walkTestAverageSpeedText',
      desc: '',
      args: [],
    );
  }

  /// `distance:`
  String get walkTestDistanceText {
    return Intl.message(
      'distance:',
      name: 'walkTestDistanceText',
      desc: '',
      args: [],
    );
  }

  /// `Sit-to-Stand\nTest`
  String get lblsitToStandTestTitleText {
    return Intl.message(
      'Sit-to-Stand\nTest',
      name: 'lblsitToStandTestTitleText',
      desc: '',
      args: [],
    );
  }

  /// `DATE`
  String get lblDate {
    return Intl.message(
      'DATE',
      name: 'lblDate',
      desc: '',
      args: [],
    );
  }

  /// `TIME`
  String get lblTime {
    return Intl.message(
      'TIME',
      name: 'lblTime',
      desc: '',
      args: [],
    );
  }

  /// `VELOCITY`
  String get lblVelocity {
    return Intl.message(
      'VELOCITY',
      name: 'lblVelocity',
      desc: '',
      args: [],
    );
  }

  /// `Sit-to-stand Repetitions:`
  String get lblSitToStandRepetitions {
    return Intl.message(
      'Sit-to-stand Repetitions:',
      name: 'lblSitToStandRepetitions',
      desc: '',
      args: [],
    );
  }

  /// `Test Finished!`
  String get lblTestFinished {
    return Intl.message(
      'Test Finished!',
      name: 'lblTestFinished',
      desc: '',
      args: [],
    );
  }

  /// `BEST SIT-TO-STAND RESULT:`
  String get lblBestSitToStandResult {
    return Intl.message(
      'BEST SIT-TO-STAND RESULT:',
      name: 'lblBestSitToStandResult',
      desc: '',
      args: [],
    );
  }

  /// `Power`
  String get lblPower {
    return Intl.message(
      'Power',
      name: 'lblPower',
      desc: '',
      args: [],
    );
  }

  /// `SAVE RESULTS`
  String get lblSaveResults {
    return Intl.message(
      'SAVE RESULTS',
      name: 'lblSaveResults',
      desc: '',
      args: [],
    );
  }

  /// `Please select meter length`
  String get walkSelectLengthErrorText {
    return Intl.message(
      'Please select meter length',
      name: 'walkSelectLengthErrorText',
      desc: '',
      args: [],
    );
  }

  /// `save results`
  String get btnSaveResultsText {
    return Intl.message(
      'save results',
      name: 'btnSaveResultsText',
      desc: '',
      args: [],
    );
  }

  /// `Select length:`
  String get walkTestInitialLblText {
    return Intl.message(
      'Select length:',
      name: 'walkTestInitialLblText',
      desc: '',
      args: [],
    );
  }

  /// `{value} meter`
  String textFromMeter(int value) {
    return Intl.message(
      '$value meter',
      name: 'textFromMeter',
      desc: '',
      args: [value],
    );
  }

  /// `Distance`
  String get lblDistance {
    return Intl.message(
      'Distance',
      name: 'lblDistance',
      desc: '',
      args: [],
    );
  }

  /// `AVG. Speed`
  String get lblAverageSpeed {
    return Intl.message(
      'AVG. Speed',
      name: 'lblAverageSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Global Physical Activity Questionnaire (GPAQ)`
  String get gpaqHeaderText {
    return Intl.message(
      'Global Physical Activity Questionnaire (GPAQ)',
      name: 'gpaqHeaderText',
      desc: '',
      args: [],
    );
  }

  /// `This questionnaire will consist of questions about your physical activity in a normal week. Please answer these questions even if you do not consider yourself to be a physically active person.`
  String get gpaqDescription {
    return Intl.message(
      'This questionnaire will consist of questions about your physical activity in a normal week. Please answer these questions even if you do not consider yourself to be a physically active person.',
      name: 'gpaqDescription',
      desc: '',
      args: [],
    );
  }

  /// `Lower Extremity Functional Scale (LEFS)`
  String get lefsHeaderText {
    return Intl.message(
      'Lower Extremity Functional Scale (LEFS)',
      name: 'lefsHeaderText',
      desc: '',
      args: [],
    );
  }

  /// `This questionnaire will consist of 20 questions about a person’s ability to perform everyday tasks.`
  String get lefsDescription {
    return Intl.message(
      'This questionnaire will consist of 20 questions about a person’s ability to perform everyday tasks.',
      name: 'lefsDescription',
      desc: '',
      args: [],
    );
  }

  /// `*this questionnaire is `
  String get questionnaireInfoTextPart {
    return Intl.message(
      '*this questionnaire is ',
      name: 'questionnaireInfoTextPart',
      desc: '',
      args: [],
    );
  }

  /// `mandatory`
  String get mandatoryText {
    return Intl.message(
      'mandatory',
      name: 'mandatoryText',
      desc: '',
      args: [],
    );
  }

  /// `optional`
  String get optionalText {
    return Intl.message(
      'optional',
      name: 'optionalText',
      desc: '',
      args: [],
    );
  }

  /// `start`
  String get btnStartText {
    return Intl.message(
      'start',
      name: 'btnStartText',
      desc: '',
      args: [],
    );
  }

  /// `Physical Activity`
  String get gpaqInitialHeaderText {
    return Intl.message(
      'Physical Activity',
      name: 'gpaqInitialHeaderText',
      desc: '',
      args: [],
    );
  }

  /// `Following questions will be about the time you spend doing different types of physical activity in a typical week. Please answer these questions even if you do not consider yourself to be a physically active person.`
  String get gpaqInitialDescription1 {
    return Intl.message(
      'Following questions will be about the time you spend doing different types of physical activity in a typical week. Please answer these questions even if you do not consider yourself to be a physically active person.',
      name: 'gpaqInitialDescription1',
      desc: '',
      args: [],
    );
  }

  /// `Think first about the time you spend doing work. Think of work as the things that you have to do such as paid or unpaid work, study/training, household chores, harvesting food/crops, fishing or hunting for food, seeking employment.`
  String get gpaqInitialDescription2 {
    return Intl.message(
      'Think first about the time you spend doing work. Think of work as the things that you have to do such as paid or unpaid work, study/training, household chores, harvesting food/crops, fishing or hunting for food, seeking employment.',
      name: 'gpaqInitialDescription2',
      desc: '',
      args: [],
    );
  }

  /// `In answering the following questions 'vigorous-intensity activities' are activities that require hard physical effort and cause large increases in breathing or heart rate, 'moderate-intensity activities' are activities that require moderate physical effort and cause small increases in breathing or heart rate.`
  String get gpaqInitialDescription3 {
    return Intl.message(
      'In answering the following questions \'vigorous-intensity activities\' are activities that require hard physical effort and cause large increases in breathing or heart rate, \'moderate-intensity activities\' are activities that require moderate physical effort and cause small increases in breathing or heart rate.',
      name: 'gpaqInitialDescription3',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get btnBackActionText {
    return Intl.message(
      'Back',
      name: 'btnBackActionText',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get btnNextActionText {
    return Intl.message(
      'Next',
      name: 'btnNextActionText',
      desc: '',
      args: [],
    );
  }

  /// `We are interested in knowing whether you are having any difficulty at all with the activities listed below because of your lower limb problem for which you are currently seeking attention. Please provide an answer for each activity.`
  String get lefsDescription2 {
    return Intl.message(
      'We are interested in knowing whether you are having any difficulty at all with the activities listed below because of your lower limb problem for which you are currently seeking attention. Please provide an answer for each activity.',
      name: 'lefsDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Today, `
  String get lefsDescription3 {
    return Intl.message(
      'Today, ',
      name: 'lefsDescription3',
      desc: '',
      args: [],
    );
  }

  /// `do you`
  String get lefsDescription4 {
    return Intl.message(
      'do you',
      name: 'lefsDescription4',
      desc: '',
      args: [],
    );
  }

  /// ` or `
  String get lefsDescription5 {
    return Intl.message(
      ' or ',
      name: 'lefsDescription5',
      desc: '',
      args: [],
    );
  }

  /// `would you`
  String get lefsDescription6 {
    return Intl.message(
      'would you',
      name: 'lefsDescription6',
      desc: '',
      args: [],
    );
  }

  /// ` have any difficulty at all with:`
  String get lefsDescription7 {
    return Intl.message(
      ' have any difficulty at all with:',
      name: 'lefsDescription7',
      desc: '',
      args: [],
    );
  }

  /// `Act-`
  String get lblAct {
    return Intl.message(
      'Act-',
      name: 'lblAct',
      desc: '',
      args: [],
    );
  }

  /// `On`
  String get lblOn {
    return Intl.message(
      'On',
      name: 'lblOn',
      desc: '',
      args: [],
    );
  }

  /// `No Results Found`
  String get lblNoResultsFound {
    return Intl.message(
      'No Results Found',
      name: 'lblNoResultsFound',
      desc: '',
      args: [],
    );
  }

  /// `Travel to and from places`
  String get gpaqTravelHeaderText {
    return Intl.message(
      'Travel to and from places',
      name: 'gpaqTravelHeaderText',
      desc: '',
      args: [],
    );
  }

  /// `The next questions exclude the physical activities at work that you have already mentioned.`
  String get gpaqTravelDescription {
    return Intl.message(
      'The next questions exclude the physical activities at work that you have already mentioned.',
      name: 'gpaqTravelDescription',
      desc: '',
      args: [],
    );
  }

  /// `Following questions will be about the usual way you travel to and from places. For example to work, for shopping, to market, to place of worship.`
  String get gpaqTravelDescription2 {
    return Intl.message(
      'Following questions will be about the usual way you travel to and from places. For example to work, for shopping, to market, to place of worship.',
      name: 'gpaqTravelDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Work`
  String get gpaqWorkHeaderText {
    return Intl.message(
      'Work',
      name: 'gpaqWorkHeaderText',
      desc: '',
      args: [],
    );
  }

  /// `Does your work involve moderate-intensity activity, that causes small increases in breathing or heart rate such as brisk walking (or carrying light loads) for at least 10 minutes continuously?`
  String get gpaqWorkDescription {
    return Intl.message(
      'Does your work involve moderate-intensity activity, that causes small increases in breathing or heart rate such as brisk walking (or carrying light loads) for at least 10 minutes continuously?',
      name: 'gpaqWorkDescription',
      desc: '',
      args: [],
    );
  }

  /// `In a typical week, on how many days do you do moderate-intensity activities as part of your work?`
  String get gpaqWorkDescription2 {
    return Intl.message(
      'In a typical week, on how many days do you do moderate-intensity activities as part of your work?',
      name: 'gpaqWorkDescription2',
      desc: '',
      args: [],
    );
  }

  /// `How much time do you spend doing moderate-intensity activities at work on a typical day?`
  String get gpaqWorkDescription3 {
    return Intl.message(
      'How much time do you spend doing moderate-intensity activities at work on a typical day?',
      name: 'gpaqWorkDescription3',
      desc: '',
      args: [],
    );
  }

  /// `Select number of days`
  String get gpaqDaysHintText {
    return Intl.message(
      'Select number of days',
      name: 'gpaqDaysHintText',
      desc: '',
      args: [],
    );
  }

  /// `Do you walk or use a bicycle (pedal cycle) for at least 10 minutes continuously to get to and from places?`
  String get gpaqTravelDescription3 {
    return Intl.message(
      'Do you walk or use a bicycle (pedal cycle) for at least 10 minutes continuously to get to and from places?',
      name: 'gpaqTravelDescription3',
      desc: '',
      args: [],
    );
  }

  /// `In a typical week, on how many days do you walk or bicycle for at least 10 minutes continuously to get to and from places?`
  String get gpaqTravelDescription4 {
    return Intl.message(
      'In a typical week, on how many days do you walk or bicycle for at least 10 minutes continuously to get to and from places?',
      name: 'gpaqTravelDescription4',
      desc: '',
      args: [],
    );
  }

  /// `How much time do you spend walking or bicycling for travel on a typical day?`
  String get gpaqTravelDescription5 {
    return Intl.message(
      'How much time do you spend walking or bicycling for travel on a typical day?',
      name: 'gpaqTravelDescription5',
      desc: '',
      args: [],
    );
  }

  /// `The next questions exclude the work and transport activities that you have already mentioned.`
  String get gpaqRecreationDescription {
    return Intl.message(
      'The next questions exclude the work and transport activities that you have already mentioned.',
      name: 'gpaqRecreationDescription',
      desc: '',
      args: [],
    );
  }

  /// `Following questions will be about sports, fitness and recreational activities (leisure).`
  String get gpaqRecreationDescription2 {
    return Intl.message(
      'Following questions will be about sports, fitness and recreational activities (leisure).',
      name: 'gpaqRecreationDescription2',
      desc: '',
      args: [],
    );
  }

  /// `Do you do any vigorous-intensity sports, fitness or recreational (leisure) activities that cause large increases in breathing or heart rate like [running or football] for at least 10 minutes continuously?`
  String get gpaqRecreationDescription3 {
    return Intl.message(
      'Do you do any vigorous-intensity sports, fitness or recreational (leisure) activities that cause large increases in breathing or heart rate like [running or football] for at least 10 minutes continuously?',
      name: 'gpaqRecreationDescription3',
      desc: '',
      args: [],
    );
  }

  /// `In a typical week, on how many days do you do vigorous-intensity sports, fitness or recreational (leisure) activities?`
  String get gpaqRecreationDescription4 {
    return Intl.message(
      'In a typical week, on how many days do you do vigorous-intensity sports, fitness or recreational (leisure) activities?',
      name: 'gpaqRecreationDescription4',
      desc: '',
      args: [],
    );
  }

  /// `How much time do you spend doing vigorous-intensity sports, fitness or recreational activities on a typical day?`
  String get gpaqRecreationDescription5 {
    return Intl.message(
      'How much time do you spend doing vigorous-intensity sports, fitness or recreational activities on a typical day?',
      name: 'gpaqRecreationDescription5',
      desc: '',
      args: [],
    );
  }

  /// `Do you do any moderate-intensity sports, fitness or recreational (leisure) activities that cause a small increase in breathing or heart rate such as brisk walking (or cycling, swimming, volleyball) for at least 10 minutes continuously?`
  String get gpaqRecreationDescription6 {
    return Intl.message(
      'Do you do any moderate-intensity sports, fitness or recreational (leisure) activities that cause a small increase in breathing or heart rate such as brisk walking (or cycling, swimming, volleyball) for at least 10 minutes continuously?',
      name: 'gpaqRecreationDescription6',
      desc: '',
      args: [],
    );
  }

  /// `In a typical week, on how many days do you do moderate-intensity sports, fitness or recreational (leisure) activities?`
  String get gpaqRecreationDescription7 {
    return Intl.message(
      'In a typical week, on how many days do you do moderate-intensity sports, fitness or recreational (leisure) activities?',
      name: 'gpaqRecreationDescription7',
      desc: '',
      args: [],
    );
  }

  /// `How much time do you spend doing moderate-intensity sports, fitness or recreational activities on a typical day?`
  String get gpaqRecreationDescription8 {
    return Intl.message(
      'How much time do you spend doing moderate-intensity sports, fitness or recreational activities on a typical day?',
      name: 'gpaqRecreationDescription8',
      desc: '',
      args: [],
    );
  }

  /// `The following question is about sitting or reclining at work, at home, getting to and from places, or with friends including time spent sitting at a desk, sitting with friends, traveling in car, bus, train, reading, playing cards or watching television, but do not include time spent sleeping.`
  String get gpaqSedentaryDescription {
    return Intl.message(
      'The following question is about sitting or reclining at work, at home, getting to and from places, or with friends including time spent sitting at a desk, sitting with friends, traveling in car, bus, train, reading, playing cards or watching television, but do not include time spent sleeping.',
      name: 'gpaqSedentaryDescription',
      desc: '',
      args: [],
    );
  }

  /// `How much time do you usually spend sitting or reclining on a typical day?`
  String get gpaqSedentaryDescription1 {
    return Intl.message(
      'How much time do you usually spend sitting or reclining on a typical day?',
      name: 'gpaqSedentaryDescription1',
      desc: '',
      args: [],
    );
  }

  /// `Sedentary behaviour`
  String get gpaqSedentaryHeaderText {
    return Intl.message(
      'Sedentary behaviour',
      name: 'gpaqSedentaryHeaderText',
      desc: '',
      args: [],
    );
  }

  /// `Recreational activities`
  String get gpaqRecreationHeaderText {
    return Intl.message(
      'Recreational activities',
      name: 'gpaqRecreationHeaderText',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get btnActionYes {
    return Intl.message(
      'Yes',
      name: 'btnActionYes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get btnActionNo {
    return Intl.message(
      'No',
      name: 'btnActionNo',
      desc: '',
      args: [],
    );
  }

  /// `Finish`
  String get btnActionFinishText {
    return Intl.message(
      'Finish',
      name: 'btnActionFinishText',
      desc: '',
      args: [],
    );
  }

  /// `Hours`
  String get lblHourText {
    return Intl.message(
      'Hours',
      name: 'lblHourText',
      desc: '',
      args: [],
    );
  }

  /// `Minutes`
  String get lblMinuteText {
    return Intl.message(
      'Minutes',
      name: 'lblMinuteText',
      desc: '',
      args: [],
    );
  }

  /// `Please select number of days`
  String get gpaqDaysErrorText {
    return Intl.message(
      'Please select number of days',
      name: 'gpaqDaysErrorText',
      desc: '',
      args: [],
    );
  }

  /// `Please select one of choices`
  String get gpaqRequiredChoice {
    return Intl.message(
      'Please select one of choices',
      name: 'gpaqRequiredChoice',
      desc: '',
      args: [],
    );
  }

  /// `{value} days`
  String textFromDays(int value) {
    return Intl.message(
      '$value days',
      name: 'textFromDays',
      desc: '',
      args: [value],
    );
  }

  /// `Any of your usual work, housework or school activities.`
  String get lefsQuestionText1 {
    return Intl.message(
      'Any of your usual work, housework or school activities.',
      name: 'lefsQuestionText1',
      desc: '',
      args: [],
    );
  }

  /// `Your usual hobbies, recreational or sporting activities.`
  String get lefsQuestionText2 {
    return Intl.message(
      'Your usual hobbies, recreational or sporting activities.',
      name: 'lefsQuestionText2',
      desc: '',
      args: [],
    );
  }

  /// `Getting into or out of the bath.`
  String get lefsQuestionText3 {
    return Intl.message(
      'Getting into or out of the bath.',
      name: 'lefsQuestionText3',
      desc: '',
      args: [],
    );
  }

  /// `Walking between rooms.`
  String get lefsQuestionText4 {
    return Intl.message(
      'Walking between rooms.',
      name: 'lefsQuestionText4',
      desc: '',
      args: [],
    );
  }

  /// `Putting on your shoes or socks.`
  String get lefsQuestionText5 {
    return Intl.message(
      'Putting on your shoes or socks.',
      name: 'lefsQuestionText5',
      desc: '',
      args: [],
    );
  }

  /// `Squatting.`
  String get lefsQuestionText6 {
    return Intl.message(
      'Squatting.',
      name: 'lefsQuestionText6',
      desc: '',
      args: [],
    );
  }

  /// `Lifting an object, like a bag of groceries from the floor.`
  String get lefsQuestionText7 {
    return Intl.message(
      'Lifting an object, like a bag of groceries from the floor.',
      name: 'lefsQuestionText7',
      desc: '',
      args: [],
    );
  }

  /// `Performing light activities around your home.`
  String get lefsQuestionText8 {
    return Intl.message(
      'Performing light activities around your home.',
      name: 'lefsQuestionText8',
      desc: '',
      args: [],
    );
  }

  /// `Performing heavy activities around your home.`
  String get lefsQuestionText9 {
    return Intl.message(
      'Performing heavy activities around your home.',
      name: 'lefsQuestionText9',
      desc: '',
      args: [],
    );
  }

  /// `Getting into or out of a car.`
  String get lefsQuestionText10 {
    return Intl.message(
      'Getting into or out of a car.',
      name: 'lefsQuestionText10',
      desc: '',
      args: [],
    );
  }

  /// `Walking 2 blocks.`
  String get lefsQuestionText11 {
    return Intl.message(
      'Walking 2 blocks.',
      name: 'lefsQuestionText11',
      desc: '',
      args: [],
    );
  }

  /// `Walking a mile`
  String get lefsQuestionText12 {
    return Intl.message(
      'Walking a mile',
      name: 'lefsQuestionText12',
      desc: '',
      args: [],
    );
  }

  /// `Going up or down 10 stairs (about 1 flight of stairs).`
  String get lefsQuestionText13 {
    return Intl.message(
      'Going up or down 10 stairs (about 1 flight of stairs).',
      name: 'lefsQuestionText13',
      desc: '',
      args: [],
    );
  }

  /// `Standing for 1 hour.`
  String get lefsQuestionText14 {
    return Intl.message(
      'Standing for 1 hour.',
      name: 'lefsQuestionText14',
      desc: '',
      args: [],
    );
  }

  /// `Sitting for 1 hour.`
  String get lefsQuestionText15 {
    return Intl.message(
      'Sitting for 1 hour.',
      name: 'lefsQuestionText15',
      desc: '',
      args: [],
    );
  }

  /// `Running on even ground.`
  String get lefsQuestionText16 {
    return Intl.message(
      'Running on even ground.',
      name: 'lefsQuestionText16',
      desc: '',
      args: [],
    );
  }

  /// `Running on uneven ground.`
  String get lefsQuestionText17 {
    return Intl.message(
      'Running on uneven ground.',
      name: 'lefsQuestionText17',
      desc: '',
      args: [],
    );
  }

  /// `Making sharp turns while running fast.`
  String get lefsQuestionText18 {
    return Intl.message(
      'Making sharp turns while running fast.',
      name: 'lefsQuestionText18',
      desc: '',
      args: [],
    );
  }

  /// `Hopping.`
  String get lefsQuestionText19 {
    return Intl.message(
      'Hopping.',
      name: 'lefsQuestionText19',
      desc: '',
      args: [],
    );
  }

  /// `Rolling over in bed.`
  String get lefsQuestionText20 {
    return Intl.message(
      'Rolling over in bed.',
      name: 'lefsQuestionText20',
      desc: '',
      args: [],
    );
  }

  /// `Extreme difficulty or unable to perform activity`
  String get lefsDifficultyLevelText1 {
    return Intl.message(
      'Extreme difficulty or unable to perform activity',
      name: 'lefsDifficultyLevelText1',
      desc: '',
      args: [],
    );
  }

  /// `Quite a bit of difficulty`
  String get lefsDifficultyLevelText2 {
    return Intl.message(
      'Quite a bit of difficulty',
      name: 'lefsDifficultyLevelText2',
      desc: '',
      args: [],
    );
  }

  /// `Moderate difficulty`
  String get lefsDifficultyLevelText3 {
    return Intl.message(
      'Moderate difficulty',
      name: 'lefsDifficultyLevelText3',
      desc: '',
      args: [],
    );
  }

  /// `A little bit of difficulty`
  String get lefsDifficultyLevelText4 {
    return Intl.message(
      'A little bit of difficulty',
      name: 'lefsDifficultyLevelText4',
      desc: '',
      args: [],
    );
  }

  /// `No difficulty`
  String get lefsDifficultyLevelText5 {
    return Intl.message(
      'No difficulty',
      name: 'lefsDifficultyLevelText5',
      desc: '',
      args: [],
    );
  }

  /// `Save and continue`
  String get btnSaveContinueActionText {
    return Intl.message(
      'Save and continue',
      name: 'btnSaveContinueActionText',
      desc: '',
      args: [],
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
