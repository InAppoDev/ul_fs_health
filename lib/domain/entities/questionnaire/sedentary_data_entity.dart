part of 'questionnaire_entity.dart';

@freezed
class SedentaryDataEntity with _$SedentaryDataEntity {
  const factory SedentaryDataEntity(
      {required int hours,
      required int minutes}) = _SedentaryDataEntity;
}
