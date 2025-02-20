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
      mode: $enumDecodeNullable(_$TrackingModeEnumMap, json['mode']) ??
          TrackingMode.none,
    );

Map<String, dynamic> _$$TrackingDataImplToJson(_$TrackingDataImpl instance) =>
    <String, dynamic>{
      'accelerometerData': instance.accelerometerData,
      'gpsData': instance.gpsData,
      'mode': _$TrackingModeEnumMap[instance.mode]!,
    };

const _$TrackingModeEnumMap = {
  TrackingMode.none: 'none',
  TrackingMode.gps: 'gps',
  TrackingMode.indoor: 'indoor',
};
