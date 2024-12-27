import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class DocumentReferenceConverter
    implements
        JsonConverter<DocumentReference<Map<String, dynamic>>,
            DocumentReference<Map<String, dynamic>>> {
  const DocumentReferenceConverter();

  @override
  DocumentReference<Map<String, dynamic>> fromJson(
          DocumentReference<Map<String, dynamic>> json) =>
      json;

  @override
  DocumentReference<Map<String, dynamic>> toJson(
          DocumentReference<Map<String, dynamic>> object) =>
      object;
}
