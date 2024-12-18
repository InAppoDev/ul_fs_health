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
