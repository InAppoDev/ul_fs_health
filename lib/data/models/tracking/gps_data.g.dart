// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gps_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GpsDataImpl _$$GpsDataImplFromJson(Map<String, dynamic> json) =>
    _$GpsDataImpl(
      distanceTraveled: (json['distanceTraveled'] as num?)?.toDouble() ?? 0.0,
      speed: (json['speed'] as num?)?.toDouble() ?? 0.0,
      accuracy: (json['accuracy'] as num?)?.toDouble() ?? 0.0,
      isGPSSignalStrong: json['isGPSSignalStrong'] as bool? ?? true,
      stepCount: (json['stepCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$GpsDataImplToJson(_$GpsDataImpl instance) =>
    <String, dynamic>{
      'distanceTraveled': instance.distanceTraveled,
      'speed': instance.speed,
      'accuracy': instance.accuracy,
      'isGPSSignalStrong': instance.isGPSSignalStrong,
      'stepCount': instance.stepCount,
    };
