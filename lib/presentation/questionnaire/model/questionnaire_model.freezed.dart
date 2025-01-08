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

/// @nodoc
mixin _$BasicInfo {
  Gender? get gender => throw _privateConstructorUsedError;
  String get age => throw _privateConstructorUsedError;
  String get height => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Gender? gender, String age, String height, String weight)
        fromValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender? gender, String age, String height, String weight)?
        fromValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender? gender, String age, String height, String weight)?
        fromValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BasicInfoValues value) fromValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BasicInfoValues value)? fromValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BasicInfoValues value)? fromValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BasicInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasicInfoCopyWith<BasicInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInfoCopyWith<$Res> {
  factory $BasicInfoCopyWith(BasicInfo value, $Res Function(BasicInfo) then) =
      _$BasicInfoCopyWithImpl<$Res, BasicInfo>;
  @useResult
  $Res call({Gender? gender, String age, String height, String weight});
}

/// @nodoc
class _$BasicInfoCopyWithImpl<$Res, $Val extends BasicInfo>
    implements $BasicInfoCopyWith<$Res> {
  _$BasicInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasicInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? age = null,
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasicInfoValuesImplCopyWith<$Res>
    implements $BasicInfoCopyWith<$Res> {
  factory _$$BasicInfoValuesImplCopyWith(_$BasicInfoValuesImpl value,
          $Res Function(_$BasicInfoValuesImpl) then) =
      __$$BasicInfoValuesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Gender? gender, String age, String height, String weight});
}

/// @nodoc
class __$$BasicInfoValuesImplCopyWithImpl<$Res>
    extends _$BasicInfoCopyWithImpl<$Res, _$BasicInfoValuesImpl>
    implements _$$BasicInfoValuesImplCopyWith<$Res> {
  __$$BasicInfoValuesImplCopyWithImpl(
      _$BasicInfoValuesImpl _value, $Res Function(_$BasicInfoValuesImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasicInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? age = null,
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_$BasicInfoValuesImpl(
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BasicInfoValuesImpl implements _BasicInfoValues {
  const _$BasicInfoValuesImpl(
      {this.gender = null, this.age = '', this.height = '', this.weight = ''});

  @override
  @JsonKey()
  final Gender? gender;
  @override
  @JsonKey()
  final String age;
  @override
  @JsonKey()
  final String height;
  @override
  @JsonKey()
  final String weight;

  @override
  String toString() {
    return 'BasicInfo.fromValues(gender: $gender, age: $age, height: $height, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicInfoValuesImpl &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender, age, height, weight);

  /// Create a copy of BasicInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicInfoValuesImplCopyWith<_$BasicInfoValuesImpl> get copyWith =>
      __$$BasicInfoValuesImplCopyWithImpl<_$BasicInfoValuesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Gender? gender, String age, String height, String weight)
        fromValues,
  }) {
    return fromValues(gender, age, height, weight);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Gender? gender, String age, String height, String weight)?
        fromValues,
  }) {
    return fromValues?.call(gender, age, height, weight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Gender? gender, String age, String height, String weight)?
        fromValues,
    required TResult orElse(),
  }) {
    if (fromValues != null) {
      return fromValues(gender, age, height, weight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BasicInfoValues value) fromValues,
  }) {
    return fromValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BasicInfoValues value)? fromValues,
  }) {
    return fromValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BasicInfoValues value)? fromValues,
    required TResult orElse(),
  }) {
    if (fromValues != null) {
      return fromValues(this);
    }
    return orElse();
  }
}

abstract class _BasicInfoValues implements BasicInfo {
  const factory _BasicInfoValues(
      {final Gender? gender,
      final String age,
      final String height,
      final String weight}) = _$BasicInfoValuesImpl;

  @override
  Gender? get gender;
  @override
  String get age;
  @override
  String get height;
  @override
  String get weight;

  /// Create a copy of BasicInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasicInfoValuesImplCopyWith<_$BasicInfoValuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HealthInfo {
  String get smokerStatus => throw _privateConstructorUsedError;
  String get drinkerStatus => throw _privateConstructorUsedError;
  String get cholesterolStatus => throw _privateConstructorUsedError;
  String get bloodSugarStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String smokerStatus, String drinkerStatus,
            String cholesterolStatus, String bloodSugarStatus)
        fromValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String smokerStatus, String drinkerStatus,
            String cholesterolStatus, String bloodSugarStatus)?
        fromValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String smokerStatus, String drinkerStatus,
            String cholesterolStatus, String bloodSugarStatus)?
        fromValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HealthInfoValues value) fromValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HealthInfoValues value)? fromValues,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HealthInfoValues value)? fromValues,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HealthInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HealthInfoCopyWith<HealthInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthInfoCopyWith<$Res> {
  factory $HealthInfoCopyWith(
          HealthInfo value, $Res Function(HealthInfo) then) =
      _$HealthInfoCopyWithImpl<$Res, HealthInfo>;
  @useResult
  $Res call(
      {String smokerStatus,
      String drinkerStatus,
      String cholesterolStatus,
      String bloodSugarStatus});
}

/// @nodoc
class _$HealthInfoCopyWithImpl<$Res, $Val extends HealthInfo>
    implements $HealthInfoCopyWith<$Res> {
  _$HealthInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smokerStatus = null,
    Object? drinkerStatus = null,
    Object? cholesterolStatus = null,
    Object? bloodSugarStatus = null,
  }) {
    return _then(_value.copyWith(
      smokerStatus: null == smokerStatus
          ? _value.smokerStatus
          : smokerStatus // ignore: cast_nullable_to_non_nullable
              as String,
      drinkerStatus: null == drinkerStatus
          ? _value.drinkerStatus
          : drinkerStatus // ignore: cast_nullable_to_non_nullable
              as String,
      cholesterolStatus: null == cholesterolStatus
          ? _value.cholesterolStatus
          : cholesterolStatus // ignore: cast_nullable_to_non_nullable
              as String,
      bloodSugarStatus: null == bloodSugarStatus
          ? _value.bloodSugarStatus
          : bloodSugarStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthInfoValuesImplCopyWith<$Res>
    implements $HealthInfoCopyWith<$Res> {
  factory _$$HealthInfoValuesImplCopyWith(_$HealthInfoValuesImpl value,
          $Res Function(_$HealthInfoValuesImpl) then) =
      __$$HealthInfoValuesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String smokerStatus,
      String drinkerStatus,
      String cholesterolStatus,
      String bloodSugarStatus});
}

/// @nodoc
class __$$HealthInfoValuesImplCopyWithImpl<$Res>
    extends _$HealthInfoCopyWithImpl<$Res, _$HealthInfoValuesImpl>
    implements _$$HealthInfoValuesImplCopyWith<$Res> {
  __$$HealthInfoValuesImplCopyWithImpl(_$HealthInfoValuesImpl _value,
      $Res Function(_$HealthInfoValuesImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smokerStatus = null,
    Object? drinkerStatus = null,
    Object? cholesterolStatus = null,
    Object? bloodSugarStatus = null,
  }) {
    return _then(_$HealthInfoValuesImpl(
      smokerStatus: null == smokerStatus
          ? _value.smokerStatus
          : smokerStatus // ignore: cast_nullable_to_non_nullable
              as String,
      drinkerStatus: null == drinkerStatus
          ? _value.drinkerStatus
          : drinkerStatus // ignore: cast_nullable_to_non_nullable
              as String,
      cholesterolStatus: null == cholesterolStatus
          ? _value.cholesterolStatus
          : cholesterolStatus // ignore: cast_nullable_to_non_nullable
              as String,
      bloodSugarStatus: null == bloodSugarStatus
          ? _value.bloodSugarStatus
          : bloodSugarStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HealthInfoValuesImpl implements _HealthInfoValues {
  const _$HealthInfoValuesImpl(
      {this.smokerStatus = '',
      this.drinkerStatus = '',
      this.cholesterolStatus = '',
      this.bloodSugarStatus = ''});

  @override
  @JsonKey()
  final String smokerStatus;
  @override
  @JsonKey()
  final String drinkerStatus;
  @override
  @JsonKey()
  final String cholesterolStatus;
  @override
  @JsonKey()
  final String bloodSugarStatus;

  @override
  String toString() {
    return 'HealthInfo.fromValues(smokerStatus: $smokerStatus, drinkerStatus: $drinkerStatus, cholesterolStatus: $cholesterolStatus, bloodSugarStatus: $bloodSugarStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthInfoValuesImpl &&
            (identical(other.smokerStatus, smokerStatus) ||
                other.smokerStatus == smokerStatus) &&
            (identical(other.drinkerStatus, drinkerStatus) ||
                other.drinkerStatus == drinkerStatus) &&
            (identical(other.cholesterolStatus, cholesterolStatus) ||
                other.cholesterolStatus == cholesterolStatus) &&
            (identical(other.bloodSugarStatus, bloodSugarStatus) ||
                other.bloodSugarStatus == bloodSugarStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, smokerStatus, drinkerStatus,
      cholesterolStatus, bloodSugarStatus);

  /// Create a copy of HealthInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthInfoValuesImplCopyWith<_$HealthInfoValuesImpl> get copyWith =>
      __$$HealthInfoValuesImplCopyWithImpl<_$HealthInfoValuesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String smokerStatus, String drinkerStatus,
            String cholesterolStatus, String bloodSugarStatus)
        fromValues,
  }) {
    return fromValues(
        smokerStatus, drinkerStatus, cholesterolStatus, bloodSugarStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String smokerStatus, String drinkerStatus,
            String cholesterolStatus, String bloodSugarStatus)?
        fromValues,
  }) {
    return fromValues?.call(
        smokerStatus, drinkerStatus, cholesterolStatus, bloodSugarStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String smokerStatus, String drinkerStatus,
            String cholesterolStatus, String bloodSugarStatus)?
        fromValues,
    required TResult orElse(),
  }) {
    if (fromValues != null) {
      return fromValues(
          smokerStatus, drinkerStatus, cholesterolStatus, bloodSugarStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HealthInfoValues value) fromValues,
  }) {
    return fromValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HealthInfoValues value)? fromValues,
  }) {
    return fromValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HealthInfoValues value)? fromValues,
    required TResult orElse(),
  }) {
    if (fromValues != null) {
      return fromValues(this);
    }
    return orElse();
  }
}

abstract class _HealthInfoValues implements HealthInfo {
  const factory _HealthInfoValues(
      {final String smokerStatus,
      final String drinkerStatus,
      final String cholesterolStatus,
      final String bloodSugarStatus}) = _$HealthInfoValuesImpl;

  @override
  String get smokerStatus;
  @override
  String get drinkerStatus;
  @override
  String get cholesterolStatus;
  @override
  String get bloodSugarStatus;

  /// Create a copy of HealthInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthInfoValuesImplCopyWith<_$HealthInfoValuesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
