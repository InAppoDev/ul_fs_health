import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '../constants/aliases.dart';


class DocumentReferenceConverter implements JsonConverter<FDocumentReference, String> {
  const DocumentReferenceConverter();

  @override
  FDocumentReference fromJson(String json) {
    return FirebaseFirestore.instance.doc(json);
  }

  @override
  String toJson(FDocumentReference object) {
    print("LLLL::: ${object.path}");
    return object.path;
  }
}

