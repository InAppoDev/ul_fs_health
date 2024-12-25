// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/result_data_entity.dart';

part 'result_data_model.freezed.dart';
part 'result_data_model.g.dart';

@freezed
class ResultDataModel with _$ResultDataModel {
  @JsonSerializable(includeIfNull: false)
  const factory ResultDataModel(
      {String? date, String? time, String? velocity}) = _ResultDataModel;

  factory ResultDataModel.fromJson(Map<String, dynamic> json) =>
      _$ResultDataModelFromJson(json);

  factory ResultDataModel.fromEntity(ResultDataEntity entity) =>
      ResultDataModel(
          date: entity.date, time: entity.time, velocity: entity.velocity);

  const ResultDataModel._();

  ResultDataEntity toEntity() {
    return ResultDataEntity(date: date, time: time, velocity: velocity);
  }
}
