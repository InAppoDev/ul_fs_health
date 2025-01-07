
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/aliases.dart';
import '../../core/converter/document_reference_converter.dart';

part 'walk_result_entity.freezed.dart';


@freezed
class WalkResultEntity with _$WalkResultEntity {
  const factory WalkResultEntity({
    @DocumentReferenceConverter()
    required FDocumentReference userRef,
    DateTime? date,
    double? distance,
    double? averageSpeed}) = _WalkResultEntity;
}
