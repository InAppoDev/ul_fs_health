// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      age: (json['age'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      smokerInfo: json['smokerInfo'] as String?,
      drinkerInfo: json['drinkerInfo'] as String?,
      cholesterolInfo: json['cholesterolInfo'] as String?,
      bloodSugarInfo: json['bloodSugarInfo'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      if (_$GenderEnumMap[instance.gender] case final value?) 'gender': value,
      if (instance.age case final value?) 'age': value,
      if (instance.height case final value?) 'height': value,
      if (instance.weight case final value?) 'weight': value,
      if (instance.smokerInfo case final value?) 'smokerInfo': value,
      if (instance.drinkerInfo case final value?) 'drinkerInfo': value,
      if (instance.cholesterolInfo case final value?) 'cholesterolInfo': value,
      if (instance.bloodSugarInfo case final value?) 'bloodSugarInfo': value,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};
