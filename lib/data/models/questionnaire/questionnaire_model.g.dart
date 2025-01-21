// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionnaireModelImpl _$$QuestionnaireModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionnaireModelImpl(
      userRef: _$JsonConverterFromJson<DocumentReference<Map<String, dynamic>>,
              DocumentReference<Map<String, dynamic>>>(
          json['userRef'], const DocumentReferenceConverter().fromJson),
      workData: json['workData'] == null
          ? null
          : WorkDataModel.fromJson(json['workData'] as Map<String, dynamic>),
      travelData: json['travelData'] == null
          ? null
          : QuestionnaireDataModel.fromJson(
              json['travelData'] as Map<String, dynamic>),
      recreateData: json['recreateData'] == null
          ? null
          : QuestionnaireDataModel.fromJson(
              json['recreateData'] as Map<String, dynamic>),
      sedentaryData: json['sedentaryData'] == null
          ? null
          : SedentaryDataModel.fromJson(
              json['sedentaryData'] as Map<String, dynamic>),
      lefsData: json['lefsData'] == null
          ? null
          : LEFSDataModel.fromJson(json['lefsData'] as Map<String, dynamic>),
      isVigorousActivity: json['isVigorousActivity'] as bool?,
    );

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

_$WorkDataModelImpl _$$WorkDataModelImplFromJson(Map<String, dynamic> json) =>
    _$WorkDataModelImpl(
      daysInWeek: (json['daysInWeek'] as num?)?.toInt(),
      hours: (json['hours'] as num?)?.toInt(),
      minutes: (json['minutes'] as num?)?.toInt(),
      hasActivity: json['hasActivity'] as bool?,
    );

Map<String, dynamic> _$$WorkDataModelImplToJson(_$WorkDataModelImpl instance) =>
    <String, dynamic>{
      'daysInWeek': instance.daysInWeek,
      'hours': instance.hours,
      'minutes': instance.minutes,
      'hasActivity': instance.hasActivity,
    };

_$QuestionnaireDataModelImpl _$$QuestionnaireDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionnaireDataModelImpl(
      daysInWeek: (json['daysInWeek'] as num).toInt(),
      hours: (json['hours'] as num).toInt(),
      minutes: (json['minutes'] as num).toInt(),
      hasActivity: json['hasActivity'] as bool,
    );

Map<String, dynamic> _$$QuestionnaireDataModelImplToJson(
        _$QuestionnaireDataModelImpl instance) =>
    <String, dynamic>{
      'daysInWeek': instance.daysInWeek,
      'hours': instance.hours,
      'minutes': instance.minutes,
      'hasActivity': instance.hasActivity,
    };

_$LEFSDataModelImpl _$$LEFSDataModelImplFromJson(Map<String, dynamic> json) =>
    _$LEFSDataModelImpl(
      data: (json['data'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, $enumDecode(_$DifficultyLevelEnumMap, e)),
      ),
    );

Map<String, dynamic> _$$LEFSDataModelImplToJson(_$LEFSDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data
          .map((k, e) => MapEntry(k, _$DifficultyLevelEnumMap[e]!)),
    };

const _$DifficultyLevelEnumMap = {
  DifficultyLevel.none: 'none',
  DifficultyLevel.easy: 'easy',
  DifficultyLevel.medium: 'medium',
  DifficultyLevel.hard: 'hard',
  DifficultyLevel.extra: 'extra',
};

_$SedentaryDataModelImpl _$$SedentaryDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SedentaryDataModelImpl(
      hours: (json['hours'] as num).toInt(),
      minutes: (json['minutes'] as num).toInt(),
    );

Map<String, dynamic> _$$SedentaryDataModelImplToJson(
        _$SedentaryDataModelImpl instance) =>
    <String, dynamic>{
      'hours': instance.hours,
      'minutes': instance.minutes,
    };
