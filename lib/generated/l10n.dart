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
