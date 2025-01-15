part of 'questionnaire_model.dart';

@freezed
class WorkDataModel with _$WorkDataModel {
  const factory WorkDataModel({
    int? daysInWeek,
    int? hours,
    int? minutes,
    bool? hasActivity}) = _WorkDataModel;

  factory WorkDataModel.fromJson(Map<String, dynamic> json) =>
      _$WorkDataModelFromJson(json);

  factory WorkDataModel.fromEntity(WorkDataEntity entity) =>
      WorkDataModel(
          daysInWeek: entity.daysInWeek,
          hours: entity.hours,
          hasActivity: entity.hasActivity,
          minutes: entity.minutes);

  const WorkDataModel._();

  WorkDataEntity toEntity() {
    return WorkDataEntity(
        daysInWeek: daysInWeek,
        hours: hours,
        hasActivity: hasActivity,
        minutes: minutes,
    );
  }
}