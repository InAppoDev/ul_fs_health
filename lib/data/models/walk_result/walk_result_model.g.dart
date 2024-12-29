// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'walk_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalkResultModelImpl _$$WalkResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WalkResultModelImpl(
      userRef: const DocumentReferenceConverter()
          .fromJson(json['userRef'] as String),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      distance: (json['distance'] as num?)?.toDouble(),
      averageSpeed: (json['averageSpeed'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WalkResultModelImplToJson(
        _$WalkResultModelImpl instance) =>
    <String, dynamic>{
      'userRef': const DocumentReferenceConverter().toJson(instance.userRef),
      'date': instance.date?.toIso8601String(),
      'distance': instance.distance,
      'averageSpeed': instance.averageSpeed,
    };
