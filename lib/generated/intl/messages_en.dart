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

  static String m0(count) => "After ${count} repetitions, ";

  static String m1(value) => "${value} days";

  static String m2(value) => "${value} meter";

  static String m3(text) => "${text}\n";

  static String m4(minute) => "${minute} minutes pass, ";

  static String m5(appName) => "Welcome to ${appName}!";

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
        "btnActionFinishText": MessageLookupByLibrary.simpleMessage("Finish"),
        "btnActionNo": MessageLookupByLibrary.simpleMessage("No"),
        "btnActionYes": MessageLookupByLibrary.simpleMessage("Yes"),
        "btnBackActionText": MessageLookupByLibrary.simpleMessage("Back"),
        "btnContinue": MessageLookupByLibrary.simpleMessage("Continue"),
        "btnCreateAccount":
            MessageLookupByLibrary.simpleMessage("Create account"),
        "btnNextActionText": MessageLookupByLibrary.simpleMessage("Next"),
        "btnQuestSubmit":
            MessageLookupByLibrary.simpleMessage("Save and continue"),
        "btnSaveChangesText":
            MessageLookupByLibrary.simpleMessage("Save changes"),
        "btnSaveContinueActionText":
            MessageLookupByLibrary.simpleMessage("Save and continue"),
        "btnSaveResultsText":
            MessageLookupByLibrary.simpleMessage("save results"),
        "btnStartText": MessageLookupByLibrary.simpleMessage("start"),
        "btnTestInstructionsText":
            MessageLookupByLibrary.simpleMessage("Test instructions"),
        "btnTestPauseText": MessageLookupByLibrary.simpleMessage("pause test"),
        "btnTestResumeText":
            MessageLookupByLibrary.simpleMessage("resume test"),
        "btnTestStartText": MessageLookupByLibrary.simpleMessage("Start Test"),
        "btnTestStopText": MessageLookupByLibrary.simpleMessage("Stop Test"),
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
        "gpaqDaysErrorText": MessageLookupByLibrary.simpleMessage(
            "Please select number of days"),
        "gpaqDaysHintText":
            MessageLookupByLibrary.simpleMessage("Select number of days"),
        "gpaqDescription": MessageLookupByLibrary.simpleMessage(
            "This questionnaire will consist of questions about your physical activity in a normal week. Please answer these questions even if you do not consider yourself to be a physically active person."),
        "gpaqHeaderText": MessageLookupByLibrary.simpleMessage(
            "Global Physical Activity Questionnaire (GPAQ)"),
        "gpaqInitialDescription1": MessageLookupByLibrary.simpleMessage(
            "Following questions will be about the time you spend doing different types of physical activity in a typical week. Please answer these questions even if you do not consider yourself to be a physically active person."),
        "gpaqInitialDescription2": MessageLookupByLibrary.simpleMessage(
            "Think first about the time you spend doing work. Think of work as the things that you have to do such as paid or unpaid work, study/training, household chores, harvesting food/crops, fishing or hunting for food, seeking employment."),
        "gpaqInitialDescription3": MessageLookupByLibrary.simpleMessage(
            "In answering the following questions \'vigorous-intensity activities\' are activities that require hard physical effort and cause large increases in breathing or heart rate, \'moderate-intensity activities\' are activities that require moderate physical effort and cause small increases in breathing or heart rate."),
        "gpaqInitialHeaderText":
            MessageLookupByLibrary.simpleMessage("Physical Activity"),
        "gpaqRecreationDescription": MessageLookupByLibrary.simpleMessage(
            "The next questions exclude the work and transport activities that you have already mentioned."),
        "gpaqRecreationDescription2": MessageLookupByLibrary.simpleMessage(
            "Following questions will be about sports, fitness and recreational activities (leisure)."),
        "gpaqRecreationDescription3": MessageLookupByLibrary.simpleMessage(
            "Do you do any vigorous-intensity sports, fitness or recreational (leisure) activities that cause large increases in breathing or heart rate like [running or football] for at least 10 minutes continuously?"),
        "gpaqRecreationDescription4": MessageLookupByLibrary.simpleMessage(
            "In a typical week, on how many days do you do vigorous-intensity sports, fitness or recreational (leisure) activities?"),
        "gpaqRecreationDescription5": MessageLookupByLibrary.simpleMessage(
            "How much time do you spend doing vigorous-intensity sports, fitness or recreational activities on a typical day?"),
        "gpaqRecreationDescription6": MessageLookupByLibrary.simpleMessage(
            "Do you do any moderate-intensity sports, fitness or recreational (leisure) activities that cause a small increase in breathing or heart rate such as brisk walking (or cycling, swimming, volleyball) for at least 10 minutes continuously?"),
        "gpaqRecreationDescription7": MessageLookupByLibrary.simpleMessage(
            "In a typical week, on how many days do you do moderate-intensity sports, fitness or recreational (leisure) activities?"),
        "gpaqRecreationDescription8": MessageLookupByLibrary.simpleMessage(
            "How much time do you spend doing moderate-intensity sports, fitness or recreational activities on a typical day?"),
        "gpaqRecreationHeaderText":
            MessageLookupByLibrary.simpleMessage("Recreational activities"),
        "gpaqRequiredChoice": MessageLookupByLibrary.simpleMessage(
            "Please select one of choices"),
        "gpaqSedentaryDescription": MessageLookupByLibrary.simpleMessage(
            "The following question is about sitting or reclining at work, at home, getting to and from places, or with friends including time spent sitting at a desk, sitting with friends, traveling in car, bus, train, reading, playing cards or watching television, but do not include time spent sleeping."),
        "gpaqSedentaryDescription1": MessageLookupByLibrary.simpleMessage(
            "How much time do you usually spend sitting or reclining on a typical day?"),
        "gpaqSedentaryHeaderText":
            MessageLookupByLibrary.simpleMessage("Sedentary behaviour"),
        "gpaqTravelDescription": MessageLookupByLibrary.simpleMessage(
            "The next questions exclude the physical activities at work that you have already mentioned."),
        "gpaqTravelDescription2": MessageLookupByLibrary.simpleMessage(
            "Following questions will be about the usual way you travel to and from places. For example to work, for shopping, to market, to place of worship."),
        "gpaqTravelDescription3": MessageLookupByLibrary.simpleMessage(
            "Do you walk or use a bicycle (pedal cycle) for at least 10 minutes continuously to get to and from places?"),
        "gpaqTravelDescription4": MessageLookupByLibrary.simpleMessage(
            "In a typical week, on how many days do you walk or bicycle for at least 10 minutes continuously to get to and from places?"),
        "gpaqTravelDescription5": MessageLookupByLibrary.simpleMessage(
            "How much time do you spend walking or bicycling for travel on a typical day?"),
        "gpaqTravelHeaderText":
            MessageLookupByLibrary.simpleMessage("Travel to and from places"),
        "gpaqWorkDescription": MessageLookupByLibrary.simpleMessage(
            "Does your work involve moderate-intensity activity, that causes small increases in breathing or heart rate such as brisk walking (or carrying light loads) for at least 10 minutes continuously?"),
        "gpaqWorkDescription2": MessageLookupByLibrary.simpleMessage(
            "In a typical week, on how many days do you do moderate-intensity activities as part of your work?"),
        "gpaqWorkDescription3": MessageLookupByLibrary.simpleMessage(
            "How much time do you spend doing moderate-intensity activities at work on a typical day?"),
        "gpaqWorkHeaderText": MessageLookupByLibrary.simpleMessage("Work"),
        "heightPlaceHolder": MessageLookupByLibrary.simpleMessage(
            "Enter your height (in centimeters)"),
        "heightRequiredErrorText":
            MessageLookupByLibrary.simpleMessage("Please type your height"),
        "hintNewPassword":
            MessageLookupByLibrary.simpleMessage("your new password"),
        "hintNewRepeatPassword":
            MessageLookupByLibrary.simpleMessage("repeat your new password"),
        "hintYourEmail":
            MessageLookupByLibrary.simpleMessage("email@domain.com"),
        "hintYourPassword":
            MessageLookupByLibrary.simpleMessage("your password"),
        "hintrepeatPassword":
            MessageLookupByLibrary.simpleMessage("repeat your password"),
        "lblAct": MessageLookupByLibrary.simpleMessage("Act-"),
        "lblAnd": MessageLookupByLibrary.simpleMessage(" and  "),
        "lblAppName": MessageLookupByLibrary.simpleMessage("Ul Fs Health"),
        "lblAverageSpeed": MessageLookupByLibrary.simpleMessage("AVG. Speed"),
        "lblBestSitToStandResult":
            MessageLookupByLibrary.simpleMessage("BEST SIT-TO-STAND RESULT:"),
        "lblClickCreateAccount": MessageLookupByLibrary.simpleMessage(
            "By clicking Create account, you agree to our"),
        "lblConfirmPassword": MessageLookupByLibrary.simpleMessage(
            "Please confirm your password"),
        "lblDate": MessageLookupByLibrary.simpleMessage("DATE"),
        "lblDistance": MessageLookupByLibrary.simpleMessage("Distance"),
        "lblEmailPassword": MessageLookupByLibrary.simpleMessage(
            "Enter your email and password to enter app."),
        "lblEmailRequire":
            MessageLookupByLibrary.simpleMessage("Email is required"),
        "lblEnterPassword": MessageLookupByLibrary.simpleMessage(
            "Enter your email and password to create \n an account. Confirmation mail will be sent to \n your email."),
        "lblForgottenPassword":
            MessageLookupByLibrary.simpleMessage("Forgotten password?"),
        "lblHourText": MessageLookupByLibrary.simpleMessage("Hours"),
        "lblLogin": MessageLookupByLibrary.simpleMessage("Login"),
        "lblLoginFailed": MessageLookupByLibrary.simpleMessage("Login failed"),
        "lblMinuteText": MessageLookupByLibrary.simpleMessage("Minutes"),
        "lblNoResultsFound":
            MessageLookupByLibrary.simpleMessage("No Results Found"),
        "lblNotYetRegistered": MessageLookupByLibrary.simpleMessage(
            "Not yet registered? Sign up with your email"),
        "lblOn": MessageLookupByLibrary.simpleMessage("On"),
        "lblOr": MessageLookupByLibrary.simpleMessage("or"),
        "lblPasswordDontMatch":
            MessageLookupByLibrary.simpleMessage("Passwords do not match"),
        "lblPasswordLength": MessageLookupByLibrary.simpleMessage(
            "Password must be at least 6 characters"),
        "lblPower": MessageLookupByLibrary.simpleMessage("Power"),
        "lblPrivacyPolicy":
            MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "lblRequirePassword":
            MessageLookupByLibrary.simpleMessage("Password is required"),
        "lblSaveResults": MessageLookupByLibrary.simpleMessage("SAVE RESULTS"),
        "lblSignUp": MessageLookupByLibrary.simpleMessage("Sign up"),
        "lblSitToStandAlertInfo1": m0,
        "lblSitToStandAlertInfo2": MessageLookupByLibrary.simpleMessage(
            " will alert you that the test is finished."),
        "lblSitToStandPageDescription1": MessageLookupByLibrary.simpleMessage(
            "When you are ready and in sitting position press "),
        "lblSitToStandPageDescription2": MessageLookupByLibrary.simpleMessage(
            " and put the phone in your pocket. "),
        "lblSitToStandPageDescription3": MessageLookupByLibrary.simpleMessage(
            " will let you know when you can start with stand-up sit-down test."),
        "lblSitToStandPageTitle": MessageLookupByLibrary.simpleMessage(
            "Make sure you have a chair and enough place to stand up."),
        "lblSitToStandRepetitions":
            MessageLookupByLibrary.simpleMessage("Sit-to-stand Repetitions:"),
        "lblSoundSignal": MessageLookupByLibrary.simpleMessage("sound signal"),
        "lblTermsService":
            MessageLookupByLibrary.simpleMessage("Terms of Service"),
        "lblTestFinished":
            MessageLookupByLibrary.simpleMessage("Test Finished!"),
        "lblTime": MessageLookupByLibrary.simpleMessage("TIME"),
        "lblUnableSignup":
            MessageLookupByLibrary.simpleMessage("Unable to sign up"),
        "lblValidEmail":
            MessageLookupByLibrary.simpleMessage("Enter a valid email address"),
        "lblVelocity": MessageLookupByLibrary.simpleMessage("VELOCITY"),
        "lblYouAgree": MessageLookupByLibrary.simpleMessage(
            "By clicking continue, you agree to our"),
        "lblsitToStandTestTitleText":
            MessageLookupByLibrary.simpleMessage("Sit-to-Stand\nTest"),
        "lefsDescription": MessageLookupByLibrary.simpleMessage(
            "This questionnaire will consist of 20 questions about a person’s ability to perform everyday tasks."),
        "lefsDescription2": MessageLookupByLibrary.simpleMessage(
            "We are interested in knowing whether you are having any difficulty at all with the activities listed below because of your lower limb problem for which you are currently seeking attention. Please provide an answer for each activity."),
        "lefsDescription3": MessageLookupByLibrary.simpleMessage("Today, "),
        "lefsDescription4": MessageLookupByLibrary.simpleMessage("do you"),
        "lefsDescription5": MessageLookupByLibrary.simpleMessage(" or "),
        "lefsDescription6": MessageLookupByLibrary.simpleMessage("would you"),
        "lefsDescription7": MessageLookupByLibrary.simpleMessage(
            " have any difficulty at all with:"),
        "lefsDifficultyLevelText1": MessageLookupByLibrary.simpleMessage(
            "Extreme difficulty or unable to perform activity"),
        "lefsDifficultyLevelText2":
            MessageLookupByLibrary.simpleMessage("Quite a bit of difficulty"),
        "lefsDifficultyLevelText3":
            MessageLookupByLibrary.simpleMessage("Moderate difficulty"),
        "lefsDifficultyLevelText4":
            MessageLookupByLibrary.simpleMessage("A little bit of difficulty"),
        "lefsDifficultyLevelText5":
            MessageLookupByLibrary.simpleMessage("No difficulty"),
        "lefsHeaderText": MessageLookupByLibrary.simpleMessage(
            "Lower Extremity Functional Scale (LEFS)"),
        "lefsQuestionText1": MessageLookupByLibrary.simpleMessage(
            "Any of your usual work, housework or school activities."),
        "lefsQuestionText10": MessageLookupByLibrary.simpleMessage(
            "Getting into or out of a car."),
        "lefsQuestionText11":
            MessageLookupByLibrary.simpleMessage("Walking 2 blocks."),
        "lefsQuestionText12":
            MessageLookupByLibrary.simpleMessage("Walking a mile"),
        "lefsQuestionText13": MessageLookupByLibrary.simpleMessage(
            "Going up or down 10 stairs (about 1 flight of stairs)."),
        "lefsQuestionText14":
            MessageLookupByLibrary.simpleMessage("Standing for 1 hour."),
        "lefsQuestionText15":
            MessageLookupByLibrary.simpleMessage("Sitting for 1 hour."),
        "lefsQuestionText16":
            MessageLookupByLibrary.simpleMessage("Running on even ground."),
        "lefsQuestionText17":
            MessageLookupByLibrary.simpleMessage("Running on uneven ground."),
        "lefsQuestionText18": MessageLookupByLibrary.simpleMessage(
            "Making sharp turns while running fast."),
        "lefsQuestionText19": MessageLookupByLibrary.simpleMessage("Hopping."),
        "lefsQuestionText2": MessageLookupByLibrary.simpleMessage(
            "Your usual hobbies, recreational or sporting activities."),
        "lefsQuestionText20":
            MessageLookupByLibrary.simpleMessage("Rolling over in bed."),
        "lefsQuestionText3": MessageLookupByLibrary.simpleMessage(
            "Getting into or out of the bath."),
        "lefsQuestionText4":
            MessageLookupByLibrary.simpleMessage("Walking between rooms."),
        "lefsQuestionText5": MessageLookupByLibrary.simpleMessage(
            "Putting on your shoes or socks."),
        "lefsQuestionText6": MessageLookupByLibrary.simpleMessage("Squatting."),
        "lefsQuestionText7": MessageLookupByLibrary.simpleMessage(
            "Lifting an object, like a bag of groceries from the floor."),
        "lefsQuestionText8": MessageLookupByLibrary.simpleMessage(
            "Performing light activities around your home."),
        "lefsQuestionText9": MessageLookupByLibrary.simpleMessage(
            "Performing heavy activities around your home."),
        "mandatoryText": MessageLookupByLibrary.simpleMessage("mandatory"),
        "menuDashboardText": MessageLookupByLibrary.simpleMessage("Dashboard"),
        "menuLogoutText": MessageLookupByLibrary.simpleMessage("Log out"),
        "menuProfileText": MessageLookupByLibrary.simpleMessage("My profile"),
        "menuQuestionnaireText":
            MessageLookupByLibrary.simpleMessage("Questionairre"),
        "menuResultsText": MessageLookupByLibrary.simpleMessage("My Results"),
        "optionalText": MessageLookupByLibrary.simpleMessage("optional"),
        "pauseTestUpperText":
            MessageLookupByLibrary.simpleMessage("PAUSE TEST"),
        "pauseText": MessageLookupByLibrary.simpleMessage("PAUSE"),
        "profileDescriptionText": MessageLookupByLibrary.simpleMessage(
            "Here you can edit your login data and create your new password."),
        "profileHeaderText": MessageLookupByLibrary.simpleMessage("My Profile"),
        "questBasicInfoHeader":
            MessageLookupByLibrary.simpleMessage("Basic information"),
        "questHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Questionnaire"),
        "questHealthInfoHeader":
            MessageLookupByLibrary.simpleMessage("Health information"),
        "questInitialHeaderDescription": MessageLookupByLibrary.simpleMessage(
            "In order to give the best results, our app needs detailed information about your physical activity and health."),
        "questInitialHeaderDescription2": MessageLookupByLibrary.simpleMessage(
            "For this purpose, please fill out the following questionnaires:"),
        "questionnaireInfoTextPart":
            MessageLookupByLibrary.simpleMessage("*this questionnaire is "),
        "remainingTimeText":
            MessageLookupByLibrary.simpleMessage("Remaining time:"),
        "sitToDownTestInitialText": MessageLookupByLibrary.simpleMessage(
            "Make sure you have a chair and enough place to stand up."),
        "sitToStandTestDescriptionText": MessageLookupByLibrary.simpleMessage(
            "Simple “Sit-to-Stand” test, which you can do anywhere. All you need is an ordinary chair or similar surface, you can sit on normally."),
        "sitToStandTestTitleText":
            MessageLookupByLibrary.simpleMessage("Sit-to-Stand Test"),
        "smokerPlaceHolder":
            MessageLookupByLibrary.simpleMessage("Are you an active smoker?"),
        "smokerStatusRequiredErrorText":
            MessageLookupByLibrary.simpleMessage("The field must be filled"),
        "testFinishedText":
            MessageLookupByLibrary.simpleMessage("Test finished"),
        "testInstructionAlertFirstText":
            MessageLookupByLibrary.simpleMessage("After "),
        "testInstructionAlertSecondText": MessageLookupByLibrary.simpleMessage(
            " will alert you that the test is finished."),
        "testInstructionBoldLowerText":
            MessageLookupByLibrary.simpleMessage("sound signal"),
        "testInstructionBoldText":
            MessageLookupByLibrary.simpleMessage("Sound signal"),
        "testInstructionFirstPartText":
            MessageLookupByLibrary.simpleMessage("When you are ready press "),
        "testInstructionSecondPartText": MessageLookupByLibrary.simpleMessage(
            " and put the phone in your pocket. "),
        "testInstructionWalkThirdPart": MessageLookupByLibrary.simpleMessage(
            " will let you know when you can start walking."),
        "testStartText": MessageLookupByLibrary.simpleMessage("START TEST"),
        "textFromDays": m1,
        "textFromMeter": m2,
        "textWithNewLine": m3,
        "walkSelectLengthErrorText":
            MessageLookupByLibrary.simpleMessage("Please select meter length"),
        "walkTestAdditionalInfoFirstPartText": MessageLookupByLibrary.simpleMessage(
            "*If you feel any dizziness or tiredness during the test, you can press "),
        "walkTestAdditionalInformationSecondPartText":
            MessageLookupByLibrary.simpleMessage(
                " and resume with the test when you are feeling better."),
        "walkTestAverageSpeedText":
            MessageLookupByLibrary.simpleMessage("average speed:"),
        "walkTestDelayText": m4,
        "walkTestDescriptionText": MessageLookupByLibrary.simpleMessage(
            "Simple “Sit-to-Stand” test, which you can do anywhere. All you need is an ordinary chair or similar surface, you can sit on normally."),
        "walkTestDistanceText":
            MessageLookupByLibrary.simpleMessage("distance:"),
        "walkTestInitialLblText":
            MessageLookupByLibrary.simpleMessage("Select length:"),
        "walkTestInitialText": MessageLookupByLibrary.simpleMessage(
            "Great, you are all set to start the test!"),
        "walkTestInstruction": MessageLookupByLibrary.simpleMessage(
            "First you need to define length of one distance. Please note that recommended distance is 40 meters but other options are also viable."),
        "walkTestResultsText":
            MessageLookupByLibrary.simpleMessage("6 min walk test RESULT:"),
        "walkTestTitleText":
            MessageLookupByLibrary.simpleMessage("6 Minute Walk Test"),
        "weightPlaceHolder": MessageLookupByLibrary.simpleMessage(
            "Enter your weight (in kilograms)"),
        "weightRequiredErrorText":
            MessageLookupByLibrary.simpleMessage("Please type your weight"),
        "welcomeAppDescriptionText": MessageLookupByLibrary.simpleMessage(
            "In order to give the best results, our app needs detailed information about your personal and medical conditions."),
        "welcomeAppNameText": m5
      };
}
