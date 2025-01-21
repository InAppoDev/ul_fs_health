part of 'questionnaire_model.dart';

@freezed
class LEFSDataModel with _$LEFSDataModel {
  const factory LEFSDataModel({
    required Map<String, DifficultyLevel> data}) = _LEFSDataModel;

  factory LEFSDataModel.fromJson(Map<String, dynamic> json) =>
      _$LEFSDataModelFromJson(json);

  factory LEFSDataModel.fromEntity(LEFSDataEntity entity) =>
      LEFSDataModel(data: entity.data);

  const LEFSDataModel._();

  LEFSDataEntity toEntity() {
    return LEFSDataEntity(
        data: data
    );
  }
}