part of 'questionnaire_model.dart';

@freezed
class HealthInfo with _$HealthInfo{
  const factory HealthInfo.fromValues({
    @Default('') String smokerStatus,
    @Default('') String drinkerStatus,
    @Default('') String cholesterolStatus,
    @Default('') String bloodSugarStatus
  }) = _HealthInfoValues;
}