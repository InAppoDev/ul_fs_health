// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accelerometer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccelerometerDataImpl _$$AccelerometerDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AccelerometerDataImpl(
      distanceTraveled: (json['distanceTraveled'] as num?)?.toDouble() ?? 0.0,
      stepCount: (json['stepCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$AccelerometerDataImplToJson(
        _$AccelerometerDataImpl instance) =>
    <String, dynamic>{
      'distanceTraveled': instance.distanceTraveled,
      'stepCount': instance.stepCount,
    };
