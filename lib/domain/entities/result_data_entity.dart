import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/aliases.dart';
import '../../core/converters/document_reference_converter.dart';

part 'result_data_entity.freezed.dart';

@freezed
class ResultDataEntity with _$ResultDataEntity {
  const factory ResultDataEntity({
    DateTime? date,
    double? resultTime,
    double? velocity,
    @DocumentReferenceConverter() FDocumentReference? userRef,
  }) = _ResultDataEntity;
}
