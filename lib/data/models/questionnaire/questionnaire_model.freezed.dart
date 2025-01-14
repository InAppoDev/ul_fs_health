// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionnaireModel _$QuestionnaireModelFromJson(Map<String, dynamic> json) {
  return _QuestionnaireModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireModel {
  @DocumentReferenceConverter()
  DocumentReference<Map<String, dynamic>>? get userRef =>
      throw _privateConstructorUsedError;
  WorkDataModel? get workData => throw _privateConstructorUsedError;
  QuestionnaireDataModel? get travelData => throw _privateConstructorUsedError;
  QuestionnaireDataModel? get recreateData =>
      throw _privateConstructorUsedError;
  SedentaryDataModel? get sedentaryData => throw _privateConstructorUsedError;
  LEFSDataModel? get lefsData => throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireModelCopyWith<QuestionnaireModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireModelCopyWith<$Res> {
  factory $QuestionnaireModelCopyWith(
          QuestionnaireModel value, $Res Function(QuestionnaireModel) then) =
      _$QuestionnaireModelCopyWithImpl<$Res, QuestionnaireModel>;
  @useResult
  $Res call(
      {@DocumentReferenceConverter()
      DocumentReference<Map<String, dynamic>>? userRef,
      WorkDataModel? workData,
      QuestionnaireDataModel? travelData,
      QuestionnaireDataModel? recreateData,
      SedentaryDataModel? sedentaryData,
      LEFSDataModel? lefsData});

  $WorkDataModelCopyWith<$Res>? get workData;
  $QuestionnaireDataModelCopyWith<$Res>? get travelData;
  $QuestionnaireDataModelCopyWith<$Res>? get recreateData;
  $SedentaryDataModelCopyWith<$Res>? get sedentaryData;
  $LEFSDataModelCopyWith<$Res>? get lefsData;
}

/// @nodoc
class _$QuestionnaireModelCopyWithImpl<$Res, $Val extends QuestionnaireModel>
    implements $QuestionnaireModelCopyWith<$Res> {
  _$QuestionnaireModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = freezed,
    Object? workData = freezed,
    Object? travelData = freezed,
    Object? recreateData = freezed,
    Object? sedentaryData = freezed,
    Object? lefsData = freezed,
  }) {
    return _then(_value.copyWith(
      userRef: freezed == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Map<String, dynamic>>?,
      workData: freezed == workData
          ? _value.workData
          : workData // ignore: cast_nullable_to_non_nullable
              as WorkDataModel?,
      travelData: freezed == travelData
          ? _value.travelData
          : travelData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireDataModel?,
      recreateData: freezed == recreateData
          ? _value.recreateData
          : recreateData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireDataModel?,
      sedentaryData: freezed == sedentaryData
          ? _value.sedentaryData
          : sedentaryData // ignore: cast_nullable_to_non_nullable
              as SedentaryDataModel?,
      lefsData: freezed == lefsData
          ? _value.lefsData
          : lefsData // ignore: cast_nullable_to_non_nullable
              as LEFSDataModel?,
    ) as $Val);
  }

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkDataModelCopyWith<$Res>? get workData {
    if (_value.workData == null) {
      return null;
    }

    return $WorkDataModelCopyWith<$Res>(_value.workData!, (value) {
      return _then(_value.copyWith(workData: value) as $Val);
    });
  }

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireDataModelCopyWith<$Res>? get travelData {
    if (_value.travelData == null) {
      return null;
    }

    return $QuestionnaireDataModelCopyWith<$Res>(_value.travelData!, (value) {
      return _then(_value.copyWith(travelData: value) as $Val);
    });
  }

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireDataModelCopyWith<$Res>? get recreateData {
    if (_value.recreateData == null) {
      return null;
    }

    return $QuestionnaireDataModelCopyWith<$Res>(_value.recreateData!, (value) {
      return _then(_value.copyWith(recreateData: value) as $Val);
    });
  }

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SedentaryDataModelCopyWith<$Res>? get sedentaryData {
    if (_value.sedentaryData == null) {
      return null;
    }

    return $SedentaryDataModelCopyWith<$Res>(_value.sedentaryData!, (value) {
      return _then(_value.copyWith(sedentaryData: value) as $Val);
    });
  }

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LEFSDataModelCopyWith<$Res>? get lefsData {
    if (_value.lefsData == null) {
      return null;
    }

    return $LEFSDataModelCopyWith<$Res>(_value.lefsData!, (value) {
      return _then(_value.copyWith(lefsData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionnaireModelImplCopyWith<$Res>
    implements $QuestionnaireModelCopyWith<$Res> {
  factory _$$QuestionnaireModelImplCopyWith(_$QuestionnaireModelImpl value,
          $Res Function(_$QuestionnaireModelImpl) then) =
      __$$QuestionnaireModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DocumentReferenceConverter()
      DocumentReference<Map<String, dynamic>>? userRef,
      WorkDataModel? workData,
      QuestionnaireDataModel? travelData,
      QuestionnaireDataModel? recreateData,
      SedentaryDataModel? sedentaryData,
      LEFSDataModel? lefsData});

  @override
  $WorkDataModelCopyWith<$Res>? get workData;
  @override
  $QuestionnaireDataModelCopyWith<$Res>? get travelData;
  @override
  $QuestionnaireDataModelCopyWith<$Res>? get recreateData;
  @override
  $SedentaryDataModelCopyWith<$Res>? get sedentaryData;
  @override
  $LEFSDataModelCopyWith<$Res>? get lefsData;
}

/// @nodoc
class __$$QuestionnaireModelImplCopyWithImpl<$Res>
    extends _$QuestionnaireModelCopyWithImpl<$Res, _$QuestionnaireModelImpl>
    implements _$$QuestionnaireModelImplCopyWith<$Res> {
  __$$QuestionnaireModelImplCopyWithImpl(_$QuestionnaireModelImpl _value,
      $Res Function(_$QuestionnaireModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = freezed,
    Object? workData = freezed,
    Object? travelData = freezed,
    Object? recreateData = freezed,
    Object? sedentaryData = freezed,
    Object? lefsData = freezed,
  }) {
    return _then(_$QuestionnaireModelImpl(
      userRef: freezed == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Map<String, dynamic>>?,
      workData: freezed == workData
          ? _value.workData
          : workData // ignore: cast_nullable_to_non_nullable
              as WorkDataModel?,
      travelData: freezed == travelData
          ? _value.travelData
          : travelData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireDataModel?,
      recreateData: freezed == recreateData
          ? _value.recreateData
          : recreateData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireDataModel?,
      sedentaryData: freezed == sedentaryData
          ? _value.sedentaryData
          : sedentaryData // ignore: cast_nullable_to_non_nullable
              as SedentaryDataModel?,
      lefsData: freezed == lefsData
          ? _value.lefsData
          : lefsData // ignore: cast_nullable_to_non_nullable
              as LEFSDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$QuestionnaireModelImpl extends _QuestionnaireModel {
  const _$QuestionnaireModelImpl(
      {@DocumentReferenceConverter() required this.userRef,
      required this.workData,
      required this.travelData,
      required this.recreateData,
      required this.sedentaryData,
      required this.lefsData})
      : super._();

  factory _$QuestionnaireModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionnaireModelImplFromJson(json);

  @override
  @DocumentReferenceConverter()
  final DocumentReference<Map<String, dynamic>>? userRef;
  @override
  final WorkDataModel? workData;
  @override
  final QuestionnaireDataModel? travelData;
  @override
  final QuestionnaireDataModel? recreateData;
  @override
  final SedentaryDataModel? sedentaryData;
  @override
  final LEFSDataModel? lefsData;

  @override
  String toString() {
    return 'QuestionnaireModel(userRef: $userRef, workData: $workData, travelData: $travelData, recreateData: $recreateData, sedentaryData: $sedentaryData, lefsData: $lefsData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireModelImpl &&
            (identical(other.userRef, userRef) || other.userRef == userRef) &&
            (identical(other.workData, workData) ||
                other.workData == workData) &&
            (identical(other.travelData, travelData) ||
                other.travelData == travelData) &&
            (identical(other.recreateData, recreateData) ||
                other.recreateData == recreateData) &&
            (identical(other.sedentaryData, sedentaryData) ||
                other.sedentaryData == sedentaryData) &&
            (identical(other.lefsData, lefsData) ||
                other.lefsData == lefsData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userRef, workData, travelData,
      recreateData, sedentaryData, lefsData);

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireModelImplCopyWith<_$QuestionnaireModelImpl> get copyWith =>
      __$$QuestionnaireModelImplCopyWithImpl<_$QuestionnaireModelImpl>(
          this, _$identity);
}

abstract class _QuestionnaireModel extends QuestionnaireModel {
  const factory _QuestionnaireModel(
      {@DocumentReferenceConverter()
      required final DocumentReference<Map<String, dynamic>>? userRef,
      required final WorkDataModel? workData,
      required final QuestionnaireDataModel? travelData,
      required final QuestionnaireDataModel? recreateData,
      required final SedentaryDataModel? sedentaryData,
      required final LEFSDataModel? lefsData}) = _$QuestionnaireModelImpl;
  const _QuestionnaireModel._() : super._();

  factory _QuestionnaireModel.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireModelImpl.fromJson;

  @override
  @DocumentReferenceConverter()
  DocumentReference<Map<String, dynamic>>? get userRef;
  @override
  WorkDataModel? get workData;
  @override
  QuestionnaireDataModel? get travelData;
  @override
  QuestionnaireDataModel? get recreateData;
  @override
  SedentaryDataModel? get sedentaryData;
  @override
  LEFSDataModel? get lefsData;

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireModelImplCopyWith<_$QuestionnaireModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkDataModel _$WorkDataModelFromJson(Map<String, dynamic> json) {
  return _WorkDataModel.fromJson(json);
}

/// @nodoc
mixin _$WorkDataModel {
  int? get daysInWeek => throw _privateConstructorUsedError;
  int? get hours => throw _privateConstructorUsedError;
  int? get minutes => throw _privateConstructorUsedError;
  bool? get hasActivity => throw _privateConstructorUsedError;
  bool? get isVigorousActivity => throw _privateConstructorUsedError;

  /// Serializes this WorkDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkDataModelCopyWith<WorkDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkDataModelCopyWith<$Res> {
  factory $WorkDataModelCopyWith(
          WorkDataModel value, $Res Function(WorkDataModel) then) =
      _$WorkDataModelCopyWithImpl<$Res, WorkDataModel>;
  @useResult
  $Res call(
      {int? daysInWeek,
      int? hours,
      int? minutes,
      bool? hasActivity,
      bool? isVigorousActivity});
}

/// @nodoc
class _$WorkDataModelCopyWithImpl<$Res, $Val extends WorkDataModel>
    implements $WorkDataModelCopyWith<$Res> {
  _$WorkDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daysInWeek = freezed,
    Object? hours = freezed,
    Object? minutes = freezed,
    Object? hasActivity = freezed,
    Object? isVigorousActivity = freezed,
  }) {
    return _then(_value.copyWith(
      daysInWeek: freezed == daysInWeek
          ? _value.daysInWeek
          : daysInWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
      hasActivity: freezed == hasActivity
          ? _value.hasActivity
          : hasActivity // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVigorousActivity: freezed == isVigorousActivity
          ? _value.isVigorousActivity
          : isVigorousActivity // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkDataModelImplCopyWith<$Res>
    implements $WorkDataModelCopyWith<$Res> {
  factory _$$WorkDataModelImplCopyWith(
          _$WorkDataModelImpl value, $Res Function(_$WorkDataModelImpl) then) =
      __$$WorkDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? daysInWeek,
      int? hours,
      int? minutes,
      bool? hasActivity,
      bool? isVigorousActivity});
}

/// @nodoc
class __$$WorkDataModelImplCopyWithImpl<$Res>
    extends _$WorkDataModelCopyWithImpl<$Res, _$WorkDataModelImpl>
    implements _$$WorkDataModelImplCopyWith<$Res> {
  __$$WorkDataModelImplCopyWithImpl(
      _$WorkDataModelImpl _value, $Res Function(_$WorkDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daysInWeek = freezed,
    Object? hours = freezed,
    Object? minutes = freezed,
    Object? hasActivity = freezed,
    Object? isVigorousActivity = freezed,
  }) {
    return _then(_$WorkDataModelImpl(
      daysInWeek: freezed == daysInWeek
          ? _value.daysInWeek
          : daysInWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
      hasActivity: freezed == hasActivity
          ? _value.hasActivity
          : hasActivity // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVigorousActivity: freezed == isVigorousActivity
          ? _value.isVigorousActivity
          : isVigorousActivity // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkDataModelImpl extends _WorkDataModel {
  const _$WorkDataModelImpl(
      {this.daysInWeek,
      this.hours,
      this.minutes,
      this.hasActivity,
      this.isVigorousActivity})
      : super._();

  factory _$WorkDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkDataModelImplFromJson(json);

  @override
  final int? daysInWeek;
  @override
  final int? hours;
  @override
  final int? minutes;
  @override
  final bool? hasActivity;
  @override
  final bool? isVigorousActivity;

  @override
  String toString() {
    return 'WorkDataModel(daysInWeek: $daysInWeek, hours: $hours, minutes: $minutes, hasActivity: $hasActivity, isVigorousActivity: $isVigorousActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkDataModelImpl &&
            (identical(other.daysInWeek, daysInWeek) ||
                other.daysInWeek == daysInWeek) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.hasActivity, hasActivity) ||
                other.hasActivity == hasActivity) &&
            (identical(other.isVigorousActivity, isVigorousActivity) ||
                other.isVigorousActivity == isVigorousActivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, daysInWeek, hours, minutes, hasActivity, isVigorousActivity);

  /// Create a copy of WorkDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkDataModelImplCopyWith<_$WorkDataModelImpl> get copyWith =>
      __$$WorkDataModelImplCopyWithImpl<_$WorkDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkDataModelImplToJson(
      this,
    );
  }
}

abstract class _WorkDataModel extends WorkDataModel {
  const factory _WorkDataModel(
      {final int? daysInWeek,
      final int? hours,
      final int? minutes,
      final bool? hasActivity,
      final bool? isVigorousActivity}) = _$WorkDataModelImpl;
  const _WorkDataModel._() : super._();

  factory _WorkDataModel.fromJson(Map<String, dynamic> json) =
      _$WorkDataModelImpl.fromJson;

  @override
  int? get daysInWeek;
  @override
  int? get hours;
  @override
  int? get minutes;
  @override
  bool? get hasActivity;
  @override
  bool? get isVigorousActivity;

  /// Create a copy of WorkDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkDataModelImplCopyWith<_$WorkDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionnaireDataModel _$QuestionnaireDataModelFromJson(
    Map<String, dynamic> json) {
  return _QuestionnaireDataModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionnaireDataModel {
  int get daysInWeek => throw _privateConstructorUsedError;
  int get hours => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  bool get hasActivity => throw _privateConstructorUsedError;

  /// Serializes this QuestionnaireDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireDataModelCopyWith<QuestionnaireDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireDataModelCopyWith<$Res> {
  factory $QuestionnaireDataModelCopyWith(QuestionnaireDataModel value,
          $Res Function(QuestionnaireDataModel) then) =
      _$QuestionnaireDataModelCopyWithImpl<$Res, QuestionnaireDataModel>;
  @useResult
  $Res call({int daysInWeek, int hours, int minutes, bool hasActivity});
}

/// @nodoc
class _$QuestionnaireDataModelCopyWithImpl<$Res,
        $Val extends QuestionnaireDataModel>
    implements $QuestionnaireDataModelCopyWith<$Res> {
  _$QuestionnaireDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daysInWeek = null,
    Object? hours = null,
    Object? minutes = null,
    Object? hasActivity = null,
  }) {
    return _then(_value.copyWith(
      daysInWeek: null == daysInWeek
          ? _value.daysInWeek
          : daysInWeek // ignore: cast_nullable_to_non_nullable
              as int,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      hasActivity: null == hasActivity
          ? _value.hasActivity
          : hasActivity // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionnaireDataModelImplCopyWith<$Res>
    implements $QuestionnaireDataModelCopyWith<$Res> {
  factory _$$QuestionnaireDataModelImplCopyWith(
          _$QuestionnaireDataModelImpl value,
          $Res Function(_$QuestionnaireDataModelImpl) then) =
      __$$QuestionnaireDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int daysInWeek, int hours, int minutes, bool hasActivity});
}

/// @nodoc
class __$$QuestionnaireDataModelImplCopyWithImpl<$Res>
    extends _$QuestionnaireDataModelCopyWithImpl<$Res,
        _$QuestionnaireDataModelImpl>
    implements _$$QuestionnaireDataModelImplCopyWith<$Res> {
  __$$QuestionnaireDataModelImplCopyWithImpl(
      _$QuestionnaireDataModelImpl _value,
      $Res Function(_$QuestionnaireDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daysInWeek = null,
    Object? hours = null,
    Object? minutes = null,
    Object? hasActivity = null,
  }) {
    return _then(_$QuestionnaireDataModelImpl(
      daysInWeek: null == daysInWeek
          ? _value.daysInWeek
          : daysInWeek // ignore: cast_nullable_to_non_nullable
              as int,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      hasActivity: null == hasActivity
          ? _value.hasActivity
          : hasActivity // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionnaireDataModelImpl extends _QuestionnaireDataModel {
  const _$QuestionnaireDataModelImpl(
      {required this.daysInWeek,
      required this.hours,
      required this.minutes,
      required this.hasActivity})
      : super._();

  factory _$QuestionnaireDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionnaireDataModelImplFromJson(json);

  @override
  final int daysInWeek;
  @override
  final int hours;
  @override
  final int minutes;
  @override
  final bool hasActivity;

  @override
  String toString() {
    return 'QuestionnaireDataModel(daysInWeek: $daysInWeek, hours: $hours, minutes: $minutes, hasActivity: $hasActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireDataModelImpl &&
            (identical(other.daysInWeek, daysInWeek) ||
                other.daysInWeek == daysInWeek) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.hasActivity, hasActivity) ||
                other.hasActivity == hasActivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, daysInWeek, hours, minutes, hasActivity);

  /// Create a copy of QuestionnaireDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireDataModelImplCopyWith<_$QuestionnaireDataModelImpl>
      get copyWith => __$$QuestionnaireDataModelImplCopyWithImpl<
          _$QuestionnaireDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionnaireDataModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionnaireDataModel extends QuestionnaireDataModel {
  const factory _QuestionnaireDataModel(
      {required final int daysInWeek,
      required final int hours,
      required final int minutes,
      required final bool hasActivity}) = _$QuestionnaireDataModelImpl;
  const _QuestionnaireDataModel._() : super._();

  factory _QuestionnaireDataModel.fromJson(Map<String, dynamic> json) =
      _$QuestionnaireDataModelImpl.fromJson;

  @override
  int get daysInWeek;
  @override
  int get hours;
  @override
  int get minutes;
  @override
  bool get hasActivity;

  /// Create a copy of QuestionnaireDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireDataModelImplCopyWith<_$QuestionnaireDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LEFSDataModel _$LEFSDataModelFromJson(Map<String, dynamic> json) {
  return _LEFSDataModel.fromJson(json);
}

/// @nodoc
mixin _$LEFSDataModel {
  Map<String, DifficultyLevel> get data => throw _privateConstructorUsedError;

  /// Serializes this LEFSDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LEFSDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LEFSDataModelCopyWith<LEFSDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LEFSDataModelCopyWith<$Res> {
  factory $LEFSDataModelCopyWith(
          LEFSDataModel value, $Res Function(LEFSDataModel) then) =
      _$LEFSDataModelCopyWithImpl<$Res, LEFSDataModel>;
  @useResult
  $Res call({Map<String, DifficultyLevel> data});
}

/// @nodoc
class _$LEFSDataModelCopyWithImpl<$Res, $Val extends LEFSDataModel>
    implements $LEFSDataModelCopyWith<$Res> {
  _$LEFSDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LEFSDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, DifficultyLevel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LEFSDataModelImplCopyWith<$Res>
    implements $LEFSDataModelCopyWith<$Res> {
  factory _$$LEFSDataModelImplCopyWith(
          _$LEFSDataModelImpl value, $Res Function(_$LEFSDataModelImpl) then) =
      __$$LEFSDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, DifficultyLevel> data});
}

/// @nodoc
class __$$LEFSDataModelImplCopyWithImpl<$Res>
    extends _$LEFSDataModelCopyWithImpl<$Res, _$LEFSDataModelImpl>
    implements _$$LEFSDataModelImplCopyWith<$Res> {
  __$$LEFSDataModelImplCopyWithImpl(
      _$LEFSDataModelImpl _value, $Res Function(_$LEFSDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LEFSDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LEFSDataModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, DifficultyLevel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LEFSDataModelImpl extends _LEFSDataModel {
  const _$LEFSDataModelImpl({required final Map<String, DifficultyLevel> data})
      : _data = data,
        super._();

  factory _$LEFSDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LEFSDataModelImplFromJson(json);

  final Map<String, DifficultyLevel> _data;
  @override
  Map<String, DifficultyLevel> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'LEFSDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LEFSDataModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of LEFSDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LEFSDataModelImplCopyWith<_$LEFSDataModelImpl> get copyWith =>
      __$$LEFSDataModelImplCopyWithImpl<_$LEFSDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LEFSDataModelImplToJson(
      this,
    );
  }
}

abstract class _LEFSDataModel extends LEFSDataModel {
  const factory _LEFSDataModel(
      {required final Map<String, DifficultyLevel> data}) = _$LEFSDataModelImpl;
  const _LEFSDataModel._() : super._();

  factory _LEFSDataModel.fromJson(Map<String, dynamic> json) =
      _$LEFSDataModelImpl.fromJson;

  @override
  Map<String, DifficultyLevel> get data;

  /// Create a copy of LEFSDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LEFSDataModelImplCopyWith<_$LEFSDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SedentaryDataModel _$SedentaryDataModelFromJson(Map<String, dynamic> json) {
  return _SedentaryDataModel.fromJson(json);
}

/// @nodoc
mixin _$SedentaryDataModel {
  int get hours => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;

  /// Serializes this SedentaryDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SedentaryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SedentaryDataModelCopyWith<SedentaryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SedentaryDataModelCopyWith<$Res> {
  factory $SedentaryDataModelCopyWith(
          SedentaryDataModel value, $Res Function(SedentaryDataModel) then) =
      _$SedentaryDataModelCopyWithImpl<$Res, SedentaryDataModel>;
  @useResult
  $Res call({int hours, int minutes});
}

/// @nodoc
class _$SedentaryDataModelCopyWithImpl<$Res, $Val extends SedentaryDataModel>
    implements $SedentaryDataModelCopyWith<$Res> {
  _$SedentaryDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SedentaryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = null,
    Object? minutes = null,
  }) {
    return _then(_value.copyWith(
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SedentaryDataModelImplCopyWith<$Res>
    implements $SedentaryDataModelCopyWith<$Res> {
  factory _$$SedentaryDataModelImplCopyWith(_$SedentaryDataModelImpl value,
          $Res Function(_$SedentaryDataModelImpl) then) =
      __$$SedentaryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hours, int minutes});
}

/// @nodoc
class __$$SedentaryDataModelImplCopyWithImpl<$Res>
    extends _$SedentaryDataModelCopyWithImpl<$Res, _$SedentaryDataModelImpl>
    implements _$$SedentaryDataModelImplCopyWith<$Res> {
  __$$SedentaryDataModelImplCopyWithImpl(_$SedentaryDataModelImpl _value,
      $Res Function(_$SedentaryDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SedentaryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = null,
    Object? minutes = null,
  }) {
    return _then(_$SedentaryDataModelImpl(
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SedentaryDataModelImpl extends _SedentaryDataModel {
  const _$SedentaryDataModelImpl({required this.hours, required this.minutes})
      : super._();

  factory _$SedentaryDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SedentaryDataModelImplFromJson(json);

  @override
  final int hours;
  @override
  final int minutes;

  @override
  String toString() {
    return 'SedentaryDataModel(hours: $hours, minutes: $minutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SedentaryDataModelImpl &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hours, minutes);

  /// Create a copy of SedentaryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SedentaryDataModelImplCopyWith<_$SedentaryDataModelImpl> get copyWith =>
      __$$SedentaryDataModelImplCopyWithImpl<_$SedentaryDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SedentaryDataModelImplToJson(
      this,
    );
  }
}

abstract class _SedentaryDataModel extends SedentaryDataModel {
  const factory _SedentaryDataModel(
      {required final int hours,
      required final int minutes}) = _$SedentaryDataModelImpl;
  const _SedentaryDataModel._() : super._();

  factory _SedentaryDataModel.fromJson(Map<String, dynamic> json) =
      _$SedentaryDataModelImpl.fromJson;

  @override
  int get hours;
  @override
  int get minutes;

  /// Create a copy of SedentaryDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SedentaryDataModelImplCopyWith<_$SedentaryDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
