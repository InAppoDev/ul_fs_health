// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultDataModelImpl _$$ResultDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResultDataModelImpl(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      resultTime: (json['resultTime'] as num?)?.toDouble(),
      velocity: (json['velocity'] as num?)?.toDouble(),
      userRef: _$JsonConverterFromJson<DocumentReference<Map<String, dynamic>>,
              DocumentReference<Map<String, dynamic>>>(
          json['userRef'], const DocumentReferenceConverter().fromJson),
    );

Map<String, dynamic> _$$ResultDataModelImplToJson(
        _$ResultDataModelImpl instance) =>
    <String, dynamic>{
      if (instance.date?.toIso8601String() case final value?) 'date': value,
      if (instance.resultTime case final value?) 'resultTime': value,
      if (instance.velocity case final value?) 'velocity': value,
      if (_$JsonConverterToJson<DocumentReference<Map<String, dynamic>>,
                  DocumentReference<Map<String, dynamic>>>(
              instance.userRef, const DocumentReferenceConverter().toJson)
          case final value?)
        'userRef': value,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
