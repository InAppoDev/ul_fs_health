part of 'questionnaire_entity.dart';

@freezed
class WorkDataEntity with _$WorkDataEntity {
  const factory WorkDataEntity({
      int? daysInWeek,
      int? hours,
      int? minutes,
      bool? hasActivity,
      bool? isVigorousActivity}) = _WorkDataEntity;
}
