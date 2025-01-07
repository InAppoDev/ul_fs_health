
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/aliases.dart';
import '../../../core/converter/document_reference_converter.dart';
import '../../../domain/entities/walk_result_entity.dart';

part 'walk_result_model.freezed.dart';
part 'walk_result_model.g.dart';

@freezed
class WalkResultModel with _$WalkResultModel {
  const factory WalkResultModel({
    @DocumentReferenceConverter()
    required FDocumentReference userRef,
    DateTime? date,
    double? distance,
    double? averageSpeed}) = _WalkResultModel;
  factory WalkResultModel.fromJson(Map<String, dynamic> json) =>
      _$WalkResultModelFromJson(json);

  factory WalkResultModel.fromEntity(WalkResultEntity entity) =>
      WalkResultModel(
          userRef: entity.userRef,
          date: entity.date,
          distance: entity.distance,
          averageSpeed: entity.averageSpeed);

  const WalkResultModel._();

  WalkResultEntity toEntity() {
    return WalkResultEntity(
        userRef: userRef,
        date: date, distance: distance, averageSpeed: averageSpeed);
  }
}