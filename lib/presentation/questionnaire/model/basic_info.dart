part of 'questionnaire_model.dart';

@freezed
class BasicInfo with _$BasicInfo {

  const factory BasicInfo.fromValues({
    @Default(null) Gender? gender,
    @Default('') String age,
    @Default('') String height,
    @Default('') String weight
  }) = _BasicInfoValues;

}
