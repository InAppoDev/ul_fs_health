// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultDataModelImpl _$$ResultDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResultDataModelImpl(
      date: json['date'] as String?,
      time: json['time'] as String?,
      velocity: json['velocity'] as String?,
    );

Map<String, dynamic> _$$ResultDataModelImplToJson(
        _$ResultDataModelImpl instance) =>
    <String, dynamic>{
      if (instance.date case final value?) 'date': value,
      if (instance.time case final value?) 'time': value,
      if (instance.velocity case final value?) 'velocity': value,
    };
