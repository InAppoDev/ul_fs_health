// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/aliases.dart';
import '../../core/converters/document_reference_converter.dart';
import '../../domain/entities/result_data_entity.dart';

part 'result_data_model.freezed.dart';
part 'result_data_model.g.dart';

@freezed
class ResultDataModel with _$ResultDataModel {
  @JsonSerializable(includeIfNull: false)
  const factory ResultDataModel({
    DateTime? date,
    double? resultTime,
    double? velocity,
    @DocumentReferenceConverter() FDocumentReference? userRef,
  }) = _ResultDataModel;

  factory ResultDataModel.fromJson(Map<String, dynamic> json) =>
      _$ResultDataModelFromJson(json);

  factory ResultDataModel.fromEntity(ResultDataEntity entity) =>
      ResultDataModel(
        date: entity.date,
        resultTime: entity.resultTime,
        velocity: entity.velocity,
        userRef: entity.userRef,
      );

  const ResultDataModel._();

  ResultDataEntity toEntity() {
    return ResultDataEntity(
      date: date,
      resultTime: resultTime,
      velocity: velocity,
      userRef: userRef,
    );
  }
}
