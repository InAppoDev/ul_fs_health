part of 'questionnaire_model.dart';


@freezed
class SedentaryDataModel with _$SedentaryDataModel {
  const factory SedentaryDataModel({
    required int hours,
    required int minutes}) = _SedentaryDataModel;

  factory SedentaryDataModel.fromJson(Map<String, dynamic> json) =>
      _$SedentaryDataModelFromJson(json);

  factory SedentaryDataModel.fromEntity(SedentaryDataEntity entity) =>
      SedentaryDataModel(
          hours: entity.hours,
          minutes: entity.minutes);

  const SedentaryDataModel._();

  SedentaryDataEntity toEntity() {
    return SedentaryDataEntity(
        hours: hours,
        minutes: minutes,
    );
  }
}
