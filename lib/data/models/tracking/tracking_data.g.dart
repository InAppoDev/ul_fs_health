// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackingDataImpl _$$TrackingDataImplFromJson(Map<String, dynamic> json) =>
    _$TrackingDataImpl(
      accelerometerData: json['accelerometerData'] == null
          ? null
          : AccelerometerData.fromJson(
              json['accelerometerData'] as Map<String, dynamic>),
      gpsData: json['gpsData'] == null
          ? null
          : GpsData.fromJson(json['gpsData'] as Map<String, dynamic>),
      isGps: json['isGps'] as bool? ?? true,
    );

Map<String, dynamic> _$$TrackingDataImplToJson(_$TrackingDataImpl instance) =>
    <String, dynamic>{
      'accelerometerData': instance.accelerometerData,
      'gpsData': instance.gpsData,
      'isGps': instance.isGps,
    };
