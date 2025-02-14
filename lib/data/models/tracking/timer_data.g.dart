// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimerDataImpl _$$TimerDataImplFromJson(Map<String, dynamic> json) =>
    _$TimerDataImpl(
      progress: (json['progress'] as num?)?.toDouble() ?? 0.0,
      remainingTime: (json['remainingTime'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? 'initial',
    );

Map<String, dynamic> _$$TimerDataImplToJson(_$TimerDataImpl instance) =>
    <String, dynamic>{
      'progress': instance.progress,
      'remainingTime': instance.remainingTime,
      'status': instance.status,
    };
