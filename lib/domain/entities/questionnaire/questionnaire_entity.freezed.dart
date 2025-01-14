// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionnaireEntity {
  @DocumentReferenceConverter()
  DocumentReference<Map<String, dynamic>>? get userRef =>
      throw _privateConstructorUsedError;
  WorkDataEntity? get workData => throw _privateConstructorUsedError;
  SedentaryDataEntity? get sedentaryData => throw _privateConstructorUsedError;
  QuestionnaireDataEntity? get recreateData =>
      throw _privateConstructorUsedError;
  QuestionnaireDataEntity? get travelData => throw _privateConstructorUsedError;
  LEFSDataEntity? get lefsData => throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireEntityCopyWith<QuestionnaireEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireEntityCopyWith<$Res> {
  factory $QuestionnaireEntityCopyWith(
          QuestionnaireEntity value, $Res Function(QuestionnaireEntity) then) =
      _$QuestionnaireEntityCopyWithImpl<$Res, QuestionnaireEntity>;
  @useResult
  $Res call(
      {@DocumentReferenceConverter()
      DocumentReference<Map<String, dynamic>>? userRef,
      WorkDataEntity? workData,
      SedentaryDataEntity? sedentaryData,
      QuestionnaireDataEntity? recreateData,
      QuestionnaireDataEntity? travelData,
      LEFSDataEntity? lefsData});

  $WorkDataEntityCopyWith<$Res>? get workData;
  $SedentaryDataEntityCopyWith<$Res>? get sedentaryData;
  $QuestionnaireDataEntityCopyWith<$Res>? get recreateData;
  $QuestionnaireDataEntityCopyWith<$Res>? get travelData;
  $LEFSDataEntityCopyWith<$Res>? get lefsData;
}

/// @nodoc
class _$QuestionnaireEntityCopyWithImpl<$Res, $Val extends QuestionnaireEntity>
    implements $QuestionnaireEntityCopyWith<$Res> {
  _$QuestionnaireEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = freezed,
    Object? workData = freezed,
    Object? sedentaryData = freezed,
    Object? recreateData = freezed,
    Object? travelData = freezed,
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
              as WorkDataEntity?,
      sedentaryData: freezed == sedentaryData
          ? _value.sedentaryData
          : sedentaryData // ignore: cast_nullable_to_non_nullable
              as SedentaryDataEntity?,
      recreateData: freezed == recreateData
          ? _value.recreateData
          : recreateData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireDataEntity?,
      travelData: freezed == travelData
          ? _value.travelData
          : travelData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireDataEntity?,
      lefsData: freezed == lefsData
          ? _value.lefsData
          : lefsData // ignore: cast_nullable_to_non_nullable
              as LEFSDataEntity?,
    ) as $Val);
  }

  /// Create a copy of QuestionnaireEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WorkDataEntityCopyWith<$Res>? get workData {
    if (_value.workData == null) {
      return null;
    }

    return $WorkDataEntityCopyWith<$Res>(_value.workData!, (value) {
      return _then(_value.copyWith(workData: value) as $Val);
    });
  }

  /// Create a copy of QuestionnaireEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SedentaryDataEntityCopyWith<$Res>? get sedentaryData {
    if (_value.sedentaryData == null) {
      return null;
    }

    return $SedentaryDataEntityCopyWith<$Res>(_value.sedentaryData!, (value) {
      return _then(_value.copyWith(sedentaryData: value) as $Val);
    });
  }

  /// Create a copy of QuestionnaireEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireDataEntityCopyWith<$Res>? get recreateData {
    if (_value.recreateData == null) {
      return null;
    }

    return $QuestionnaireDataEntityCopyWith<$Res>(_value.recreateData!,
        (value) {
      return _then(_value.copyWith(recreateData: value) as $Val);
    });
  }

  /// Create a copy of QuestionnaireEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireDataEntityCopyWith<$Res>? get travelData {
    if (_value.travelData == null) {
      return null;
    }

    return $QuestionnaireDataEntityCopyWith<$Res>(_value.travelData!, (value) {
      return _then(_value.copyWith(travelData: value) as $Val);
    });
  }

  /// Create a copy of QuestionnaireEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LEFSDataEntityCopyWith<$Res>? get lefsData {
    if (_value.lefsData == null) {
      return null;
    }

    return $LEFSDataEntityCopyWith<$Res>(_value.lefsData!, (value) {
      return _then(_value.copyWith(lefsData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionnaireEntityImplCopyWith<$Res>
    implements $QuestionnaireEntityCopyWith<$Res> {
  factory _$$QuestionnaireEntityImplCopyWith(_$QuestionnaireEntityImpl value,
          $Res Function(_$QuestionnaireEntityImpl) then) =
      __$$QuestionnaireEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DocumentReferenceConverter()
      DocumentReference<Map<String, dynamic>>? userRef,
      WorkDataEntity? workData,
      SedentaryDataEntity? sedentaryData,
      QuestionnaireDataEntity? recreateData,
      QuestionnaireDataEntity? travelData,
      LEFSDataEntity? lefsData});

  @override
  $WorkDataEntityCopyWith<$Res>? get workData;
  @override
  $SedentaryDataEntityCopyWith<$Res>? get sedentaryData;
  @override
  $QuestionnaireDataEntityCopyWith<$Res>? get recreateData;
  @override
  $QuestionnaireDataEntityCopyWith<$Res>? get travelData;
  @override
  $LEFSDataEntityCopyWith<$Res>? get lefsData;
}

/// @nodoc
class __$$QuestionnaireEntityImplCopyWithImpl<$Res>
    extends _$QuestionnaireEntityCopyWithImpl<$Res, _$QuestionnaireEntityImpl>
    implements _$$QuestionnaireEntityImplCopyWith<$Res> {
  __$$QuestionnaireEntityImplCopyWithImpl(_$QuestionnaireEntityImpl _value,
      $Res Function(_$QuestionnaireEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = freezed,
    Object? workData = freezed,
    Object? sedentaryData = freezed,
    Object? recreateData = freezed,
    Object? travelData = freezed,
    Object? lefsData = freezed,
  }) {
    return _then(_$QuestionnaireEntityImpl(
      userRef: freezed == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Map<String, dynamic>>?,
      workData: freezed == workData
          ? _value.workData
          : workData // ignore: cast_nullable_to_non_nullable
              as WorkDataEntity?,
      sedentaryData: freezed == sedentaryData
          ? _value.sedentaryData
          : sedentaryData // ignore: cast_nullable_to_non_nullable
              as SedentaryDataEntity?,
      recreateData: freezed == recreateData
          ? _value.recreateData
          : recreateData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireDataEntity?,
      travelData: freezed == travelData
          ? _value.travelData
          : travelData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireDataEntity?,
      lefsData: freezed == lefsData
          ? _value.lefsData
          : lefsData // ignore: cast_nullable_to_non_nullable
              as LEFSDataEntity?,
    ));
  }
}

/// @nodoc

class _$QuestionnaireEntityImpl implements _QuestionnaireEntity {
  const _$QuestionnaireEntityImpl(
      {@DocumentReferenceConverter() this.userRef,
      this.workData,
      this.sedentaryData,
      this.recreateData,
      this.travelData,
      this.lefsData});

  @override
  @DocumentReferenceConverter()
  final DocumentReference<Map<String, dynamic>>? userRef;
  @override
  final WorkDataEntity? workData;
  @override
  final SedentaryDataEntity? sedentaryData;
  @override
  final QuestionnaireDataEntity? recreateData;
  @override
  final QuestionnaireDataEntity? travelData;
  @override
  final LEFSDataEntity? lefsData;

  @override
  String toString() {
    return 'QuestionnaireEntity(userRef: $userRef, workData: $workData, sedentaryData: $sedentaryData, recreateData: $recreateData, travelData: $travelData, lefsData: $lefsData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireEntityImpl &&
            (identical(other.userRef, userRef) || other.userRef == userRef) &&
            (identical(other.workData, workData) ||
                other.workData == workData) &&
            (identical(other.sedentaryData, sedentaryData) ||
                other.sedentaryData == sedentaryData) &&
            (identical(other.recreateData, recreateData) ||
                other.recreateData == recreateData) &&
            (identical(other.travelData, travelData) ||
                other.travelData == travelData) &&
            (identical(other.lefsData, lefsData) ||
                other.lefsData == lefsData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRef, workData, sedentaryData,
      recreateData, travelData, lefsData);

  /// Create a copy of QuestionnaireEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireEntityImplCopyWith<_$QuestionnaireEntityImpl> get copyWith =>
      __$$QuestionnaireEntityImplCopyWithImpl<_$QuestionnaireEntityImpl>(
          this, _$identity);
}

abstract class _QuestionnaireEntity implements QuestionnaireEntity {
  const factory _QuestionnaireEntity(
      {@DocumentReferenceConverter()
      final DocumentReference<Map<String, dynamic>>? userRef,
      final WorkDataEntity? workData,
      final SedentaryDataEntity? sedentaryData,
      final QuestionnaireDataEntity? recreateData,
      final QuestionnaireDataEntity? travelData,
      final LEFSDataEntity? lefsData}) = _$QuestionnaireEntityImpl;

  @override
  @DocumentReferenceConverter()
  DocumentReference<Map<String, dynamic>>? get userRef;
  @override
  WorkDataEntity? get workData;
  @override
  SedentaryDataEntity? get sedentaryData;
  @override
  QuestionnaireDataEntity? get recreateData;
  @override
  QuestionnaireDataEntity? get travelData;
  @override
  LEFSDataEntity? get lefsData;

  /// Create a copy of QuestionnaireEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireEntityImplCopyWith<_$QuestionnaireEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LEFSDataEntity {
  Map<String, DifficultyLevel> get data => throw _privateConstructorUsedError;

  /// Create a copy of LEFSDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LEFSDataEntityCopyWith<LEFSDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LEFSDataEntityCopyWith<$Res> {
  factory $LEFSDataEntityCopyWith(
          LEFSDataEntity value, $Res Function(LEFSDataEntity) then) =
      _$LEFSDataEntityCopyWithImpl<$Res, LEFSDataEntity>;
  @useResult
  $Res call({Map<String, DifficultyLevel> data});
}

/// @nodoc
class _$LEFSDataEntityCopyWithImpl<$Res, $Val extends LEFSDataEntity>
    implements $LEFSDataEntityCopyWith<$Res> {
  _$LEFSDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LEFSDataEntity
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
abstract class _$$LEFSDataEntityImplCopyWith<$Res>
    implements $LEFSDataEntityCopyWith<$Res> {
  factory _$$LEFSDataEntityImplCopyWith(_$LEFSDataEntityImpl value,
          $Res Function(_$LEFSDataEntityImpl) then) =
      __$$LEFSDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, DifficultyLevel> data});
}

/// @nodoc
class __$$LEFSDataEntityImplCopyWithImpl<$Res>
    extends _$LEFSDataEntityCopyWithImpl<$Res, _$LEFSDataEntityImpl>
    implements _$$LEFSDataEntityImplCopyWith<$Res> {
  __$$LEFSDataEntityImplCopyWithImpl(
      _$LEFSDataEntityImpl _value, $Res Function(_$LEFSDataEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LEFSDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LEFSDataEntityImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, DifficultyLevel>,
    ));
  }
}

/// @nodoc

class _$LEFSDataEntityImpl implements _LEFSDataEntity {
  const _$LEFSDataEntityImpl({required final Map<String, DifficultyLevel> data})
      : _data = data;

  final Map<String, DifficultyLevel> _data;
  @override
  Map<String, DifficultyLevel> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'LEFSDataEntity(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LEFSDataEntityImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of LEFSDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LEFSDataEntityImplCopyWith<_$LEFSDataEntityImpl> get copyWith =>
      __$$LEFSDataEntityImplCopyWithImpl<_$LEFSDataEntityImpl>(
          this, _$identity);
}

abstract class _LEFSDataEntity implements LEFSDataEntity {
  const factory _LEFSDataEntity(
          {required final Map<String, DifficultyLevel> data}) =
      _$LEFSDataEntityImpl;

  @override
  Map<String, DifficultyLevel> get data;

  /// Create a copy of LEFSDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LEFSDataEntityImplCopyWith<_$LEFSDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionnaireDataEntity {
  int get daysInWeek => throw _privateConstructorUsedError;
  int get hours => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  bool get hasActivity => throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireDataEntityCopyWith<QuestionnaireDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireDataEntityCopyWith<$Res> {
  factory $QuestionnaireDataEntityCopyWith(QuestionnaireDataEntity value,
          $Res Function(QuestionnaireDataEntity) then) =
      _$QuestionnaireDataEntityCopyWithImpl<$Res, QuestionnaireDataEntity>;
  @useResult
  $Res call({int daysInWeek, int hours, int minutes, bool hasActivity});
}

/// @nodoc
class _$QuestionnaireDataEntityCopyWithImpl<$Res,
        $Val extends QuestionnaireDataEntity>
    implements $QuestionnaireDataEntityCopyWith<$Res> {
  _$QuestionnaireDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireDataEntity
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
abstract class _$$QuestionnaireDataEntityImplCopyWith<$Res>
    implements $QuestionnaireDataEntityCopyWith<$Res> {
  factory _$$QuestionnaireDataEntityImplCopyWith(
          _$QuestionnaireDataEntityImpl value,
          $Res Function(_$QuestionnaireDataEntityImpl) then) =
      __$$QuestionnaireDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int daysInWeek, int hours, int minutes, bool hasActivity});
}

/// @nodoc
class __$$QuestionnaireDataEntityImplCopyWithImpl<$Res>
    extends _$QuestionnaireDataEntityCopyWithImpl<$Res,
        _$QuestionnaireDataEntityImpl>
    implements _$$QuestionnaireDataEntityImplCopyWith<$Res> {
  __$$QuestionnaireDataEntityImplCopyWithImpl(
      _$QuestionnaireDataEntityImpl _value,
      $Res Function(_$QuestionnaireDataEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daysInWeek = null,
    Object? hours = null,
    Object? minutes = null,
    Object? hasActivity = null,
  }) {
    return _then(_$QuestionnaireDataEntityImpl(
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

class _$QuestionnaireDataEntityImpl implements _QuestionnaireDataEntity {
  const _$QuestionnaireDataEntityImpl(
      {required this.daysInWeek,
      required this.hours,
      required this.minutes,
      required this.hasActivity});

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
    return 'QuestionnaireDataEntity(daysInWeek: $daysInWeek, hours: $hours, minutes: $minutes, hasActivity: $hasActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireDataEntityImpl &&
            (identical(other.daysInWeek, daysInWeek) ||
                other.daysInWeek == daysInWeek) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.hasActivity, hasActivity) ||
                other.hasActivity == hasActivity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, daysInWeek, hours, minutes, hasActivity);

  /// Create a copy of QuestionnaireDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireDataEntityImplCopyWith<_$QuestionnaireDataEntityImpl>
      get copyWith => __$$QuestionnaireDataEntityImplCopyWithImpl<
          _$QuestionnaireDataEntityImpl>(this, _$identity);
}

abstract class _QuestionnaireDataEntity implements QuestionnaireDataEntity {
  const factory _QuestionnaireDataEntity(
      {required final int daysInWeek,
      required final int hours,
      required final int minutes,
      required final bool hasActivity}) = _$QuestionnaireDataEntityImpl;

  @override
  int get daysInWeek;
  @override
  int get hours;
  @override
  int get minutes;
  @override
  bool get hasActivity;

  /// Create a copy of QuestionnaireDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireDataEntityImplCopyWith<_$QuestionnaireDataEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SedentaryDataEntity {
  int get hours => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;

  /// Create a copy of SedentaryDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SedentaryDataEntityCopyWith<SedentaryDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SedentaryDataEntityCopyWith<$Res> {
  factory $SedentaryDataEntityCopyWith(
          SedentaryDataEntity value, $Res Function(SedentaryDataEntity) then) =
      _$SedentaryDataEntityCopyWithImpl<$Res, SedentaryDataEntity>;
  @useResult
  $Res call({int hours, int minutes});
}

/// @nodoc
class _$SedentaryDataEntityCopyWithImpl<$Res, $Val extends SedentaryDataEntity>
    implements $SedentaryDataEntityCopyWith<$Res> {
  _$SedentaryDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SedentaryDataEntity
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
abstract class _$$SedentaryDataEntityImplCopyWith<$Res>
    implements $SedentaryDataEntityCopyWith<$Res> {
  factory _$$SedentaryDataEntityImplCopyWith(_$SedentaryDataEntityImpl value,
          $Res Function(_$SedentaryDataEntityImpl) then) =
      __$$SedentaryDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hours, int minutes});
}

/// @nodoc
class __$$SedentaryDataEntityImplCopyWithImpl<$Res>
    extends _$SedentaryDataEntityCopyWithImpl<$Res, _$SedentaryDataEntityImpl>
    implements _$$SedentaryDataEntityImplCopyWith<$Res> {
  __$$SedentaryDataEntityImplCopyWithImpl(_$SedentaryDataEntityImpl _value,
      $Res Function(_$SedentaryDataEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SedentaryDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = null,
    Object? minutes = null,
  }) {
    return _then(_$SedentaryDataEntityImpl(
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

class _$SedentaryDataEntityImpl implements _SedentaryDataEntity {
  const _$SedentaryDataEntityImpl({required this.hours, required this.minutes});

  @override
  final int hours;
  @override
  final int minutes;

  @override
  String toString() {
    return 'SedentaryDataEntity(hours: $hours, minutes: $minutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SedentaryDataEntityImpl &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hours, minutes);

  /// Create a copy of SedentaryDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SedentaryDataEntityImplCopyWith<_$SedentaryDataEntityImpl> get copyWith =>
      __$$SedentaryDataEntityImplCopyWithImpl<_$SedentaryDataEntityImpl>(
          this, _$identity);
}

abstract class _SedentaryDataEntity implements SedentaryDataEntity {
  const factory _SedentaryDataEntity(
      {required final int hours,
      required final int minutes}) = _$SedentaryDataEntityImpl;

  @override
  int get hours;
  @override
  int get minutes;

  /// Create a copy of SedentaryDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SedentaryDataEntityImplCopyWith<_$SedentaryDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkDataEntity {
  int? get daysInWeek => throw _privateConstructorUsedError;
  int? get hours => throw _privateConstructorUsedError;
  int? get minutes => throw _privateConstructorUsedError;
  bool? get hasActivity => throw _privateConstructorUsedError;
  bool? get isVigorousActivity => throw _privateConstructorUsedError;

  /// Create a copy of WorkDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkDataEntityCopyWith<WorkDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkDataEntityCopyWith<$Res> {
  factory $WorkDataEntityCopyWith(
          WorkDataEntity value, $Res Function(WorkDataEntity) then) =
      _$WorkDataEntityCopyWithImpl<$Res, WorkDataEntity>;
  @useResult
  $Res call(
      {int? daysInWeek,
      int? hours,
      int? minutes,
      bool? hasActivity,
      bool? isVigorousActivity});
}

/// @nodoc
class _$WorkDataEntityCopyWithImpl<$Res, $Val extends WorkDataEntity>
    implements $WorkDataEntityCopyWith<$Res> {
  _$WorkDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkDataEntity
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
abstract class _$$WorkDataEntityImplCopyWith<$Res>
    implements $WorkDataEntityCopyWith<$Res> {
  factory _$$WorkDataEntityImplCopyWith(_$WorkDataEntityImpl value,
          $Res Function(_$WorkDataEntityImpl) then) =
      __$$WorkDataEntityImplCopyWithImpl<$Res>;
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
class __$$WorkDataEntityImplCopyWithImpl<$Res>
    extends _$WorkDataEntityCopyWithImpl<$Res, _$WorkDataEntityImpl>
    implements _$$WorkDataEntityImplCopyWith<$Res> {
  __$$WorkDataEntityImplCopyWithImpl(
      _$WorkDataEntityImpl _value, $Res Function(_$WorkDataEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkDataEntity
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
    return _then(_$WorkDataEntityImpl(
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

class _$WorkDataEntityImpl implements _WorkDataEntity {
  const _$WorkDataEntityImpl(
      {this.daysInWeek,
      this.hours,
      this.minutes,
      this.hasActivity,
      this.isVigorousActivity});

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
    return 'WorkDataEntity(daysInWeek: $daysInWeek, hours: $hours, minutes: $minutes, hasActivity: $hasActivity, isVigorousActivity: $isVigorousActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkDataEntityImpl &&
            (identical(other.daysInWeek, daysInWeek) ||
                other.daysInWeek == daysInWeek) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.hasActivity, hasActivity) ||
                other.hasActivity == hasActivity) &&
            (identical(other.isVigorousActivity, isVigorousActivity) ||
                other.isVigorousActivity == isVigorousActivity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, daysInWeek, hours, minutes, hasActivity, isVigorousActivity);

  /// Create a copy of WorkDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkDataEntityImplCopyWith<_$WorkDataEntityImpl> get copyWith =>
      __$$WorkDataEntityImplCopyWithImpl<_$WorkDataEntityImpl>(
          this, _$identity);
}

abstract class _WorkDataEntity implements WorkDataEntity {
  const factory _WorkDataEntity(
      {final int? daysInWeek,
      final int? hours,
      final int? minutes,
      final bool? hasActivity,
      final bool? isVigorousActivity}) = _$WorkDataEntityImpl;

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

  /// Create a copy of WorkDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkDataEntityImplCopyWith<_$WorkDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
