import 'package:json_annotation/json_annotation.dart';

import '../../data/models/questionnaire/questionnaire_model.dart';


class CustomJsonConverter<T> implements JsonConverter<T, Map<String, dynamic>> {
  const CustomJsonConverter();

  @override
  T fromJson(Map<String, dynamic> json) {
    if (T == WorkDataModel) {
      return WorkDataModel.fromJson(json) as T;
    }
    if (T == LEFSDataModel) {
      return LEFSDataModel.fromJson(json) as T;
    }
    if (T == QuestionnaireDataModel) {
      return QuestionnaireDataModel.fromJson(json) as T;
    }
    if (T == SedentaryDataModel) {
      return SedentaryDataModel.fromJson(json) as T;
    }

    throw UnimplementedError('fromJson() must be implemented for type $T.');
  }

  @override
  Map<String, dynamic> toJson(T object) {
    print("KKKKK");
    if (T == WorkDataModel) {
      return (object as WorkDataModel).toJson();
    }
    if (T == LEFSDataModel) {
      return (object as QuestionnaireDataModel).toJson();
    }
    if (T == SedentaryDataModel) {
      return (object as SedentaryDataModel).toJson();
    }
    if (T == QuestionnaireDataModel) {
      return (object as LEFSDataModel).toJson();
    }
    throw UnimplementedError('toJson() must be implemented for type $T.');
  }
}
