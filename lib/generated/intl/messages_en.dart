// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "agePlaceHolder":
            MessageLookupByLibrary.simpleMessage("Enter your age"),
        "ageRequiredErrorText":
            MessageLookupByLibrary.simpleMessage("Please type your age"),
        "bloodSugarPlaceHolder": MessageLookupByLibrary.simpleMessage(
            "Do you have increased blood sugar?"),
        "bloodSugarStatusRequiredErrorText":
            MessageLookupByLibrary.simpleMessage("The field must be filled"),
        "btnCreateAccount":
            MessageLookupByLibrary.simpleMessage("Create account"),
        "btnQuestSubmit":
            MessageLookupByLibrary.simpleMessage("Save and continue"),
        "cholesterolPlaceHolder": MessageLookupByLibrary.simpleMessage(
            "Do you have increased cholesterol?"),
        "cholesterolStatusRequiredErrorText":
            MessageLookupByLibrary.simpleMessage("The field must be filled"),
        "drinkerPlaceHolder":
            MessageLookupByLibrary.simpleMessage("Are you an alcohol drinker?"),
        "drinkerStatusRequiredErrorText":
            MessageLookupByLibrary.simpleMessage("The field must be filled"),
        "genderPlaceholder":
            MessageLookupByLibrary.simpleMessage("Select your gender"),
        "genderRequiredErrorText":
            MessageLookupByLibrary.simpleMessage("Please select your gender"),
        "heightPlaceHolder": MessageLookupByLibrary.simpleMessage(
            "Enter your height (in centimeters)"),
        "heightRequiredErrorText":
            MessageLookupByLibrary.simpleMessage("Please type your height"),
        "lblLogin": MessageLookupByLibrary.simpleMessage("Login"),
        "lblSignUp": MessageLookupByLibrary.simpleMessage("Sign up"),
        "questBasicInfoHeader":
            MessageLookupByLibrary.simpleMessage("Basic information"),
        "questHeaderSubTitle": MessageLookupByLibrary.simpleMessage(
            "In order to give the best results, our app needs detailed information about your personal and medical conditions."),
        "questHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Fill this questionarre"),
        "questHealthInfoHeader":
            MessageLookupByLibrary.simpleMessage("Health information"),
        "smokerPlaceHolder":
            MessageLookupByLibrary.simpleMessage("Are you an active smoker?"),
        "smokerStatusRequiredErrorText":
            MessageLookupByLibrary.simpleMessage("The field must be filled"),
        "weightPlaceHolder": MessageLookupByLibrary.simpleMessage(
            "Enter your weight (in kilograms)"),
        "weightRequiredErrorText":
            MessageLookupByLibrary.simpleMessage("Please type your weight")
      };
}
