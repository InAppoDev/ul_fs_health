import '../../../core/constants/gender.dart';
import '../../../l10n/localizations_utils.dart';
import '../model/questionnaire_model.dart';

class QuestionnaireValidator {
  static String? validateRequiredText(String? value, String message) {
    if (value == null || value.isEmpty) {
      return message;
    }
    return null;
  }

  static String? validateGender(Gender? value) {
    return validateRequiredText(value.toString(), appLocalizations.genderRequiredErrorText);
  }

  static String? validateAge(String? value) {
    return validateRequiredText(value, appLocalizations.ageRequiredErrorText);
  }

  static String? validateHeight(String? value) {
    return validateRequiredText(value, appLocalizations.heightRequiredErrorText);
  }

  static String? validateWeight(String? value) {
    return validateRequiredText(value, appLocalizations.weightRequiredErrorText);
  }

  static String? validateSmokerStatus(String? value) {
    return validateRequiredText(value, appLocalizations.smokerStatusRequiredErrorText);
  }

  static String? validateDrinkerStatus(String? value) {
    return validateRequiredText(value, appLocalizations.drinkerStatusRequiredErrorText);
  }

  static String? validateCholesterolStatus(String? value) {
    return validateRequiredText(value, appLocalizations.cholesterolStatusRequiredErrorText);
  }

  static String? validateBloodSugarStatus(String? value) {
    return validateRequiredText(value, appLocalizations.bloodSugarStatusRequiredErrorText);
  }

  static bool validate(BasicInfo basicInfo, HealthInfo healthInfo) {
    final genderError = validateGender(basicInfo.gender);
    final heightError = validateHeight(basicInfo.height);
    final weightError = validateWeight(basicInfo.weight);
    final ageError = validateAge(basicInfo.age);
    final smokeStatusError = validateSmokerStatus(healthInfo.smokerStatus);
    final drinkStatusError = validateDrinkerStatus(healthInfo.drinkerStatus);
    final cholesterolStatusError = validateCholesterolStatus(healthInfo.cholesterolStatus);
    final bloodSugarStatusError = validateBloodSugarStatus(healthInfo.bloodSugarStatus);

    if ((genderError?.isEmpty ?? true) &&
        (heightError?.isEmpty ?? true) &&
        (weightError?.isEmpty ?? true) &&
        (ageError?.isEmpty ?? true) &&
        (smokeStatusError?.isEmpty ?? true) &&
        (drinkStatusError?.isEmpty ?? true) &&
        (cholesterolStatusError?.isEmpty ?? true) &&
        (bloodSugarStatusError?.isEmpty ?? true)) {
      return true;
    }
    return false;
  }
}
