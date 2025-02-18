// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accelerometer_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccelerometerData _$AccelerometerDataFromJson(Map<String, dynamic> json) {
  return _AccelerometerData.fromJson(json);
}

/// @nodoc
mixin _$AccelerometerData {
  double get distanceTraveled => throw _privateConstructorUsedError;
  int get stepCount => throw _privateConstructorUsedError;
  bool get isMoved => throw _privateConstructorUsedError;
  bool get isTurned => throw _privateConstructorUsedError;

  /// Serializes this AccelerometerData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccelerometerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccelerometerDataCopyWith<AccelerometerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccelerometerDataCopyWith<$Res> {
  factory $AccelerometerDataCopyWith(
          AccelerometerData value, $Res Function(AccelerometerData) then) =
      _$AccelerometerDataCopyWithImpl<$Res, AccelerometerData>;
  @useResult
  $Res call(
      {double distanceTraveled, int stepCount, bool isMoved, bool isTurned});
}

/// @nodoc
class _$AccelerometerDataCopyWithImpl<$Res, $Val extends AccelerometerData>
    implements $AccelerometerDataCopyWith<$Res> {
  _$AccelerometerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccelerometerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceTraveled = null,
    Object? stepCount = null,
    Object? isMoved = null,
    Object? isTurned = null,
  }) {
    return _then(_value.copyWith(
      distanceTraveled: null == distanceTraveled
          ? _value.distanceTraveled
          : distanceTraveled // ignore: cast_nullable_to_non_nullable
              as double,
      stepCount: null == stepCount
          ? _value.stepCount
          : stepCount // ignore: cast_nullable_to_non_nullable
              as int,
      isMoved: null == isMoved
          ? _value.isMoved
          : isMoved // ignore: cast_nullable_to_non_nullable
              as bool,
      isTurned: null == isTurned
          ? _value.isTurned
          : isTurned // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccelerometerDataImplCopyWith<$Res>
    implements $AccelerometerDataCopyWith<$Res> {
  factory _$$AccelerometerDataImplCopyWith(_$AccelerometerDataImpl value,
          $Res Function(_$AccelerometerDataImpl) then) =
      __$$AccelerometerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double distanceTraveled, int stepCount, bool isMoved, bool isTurned});
}

/// @nodoc
class __$$AccelerometerDataImplCopyWithImpl<$Res>
    extends _$AccelerometerDataCopyWithImpl<$Res, _$AccelerometerDataImpl>
    implements _$$AccelerometerDataImplCopyWith<$Res> {
  __$$AccelerometerDataImplCopyWithImpl(_$AccelerometerDataImpl _value,
      $Res Function(_$AccelerometerDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccelerometerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceTraveled = null,
    Object? stepCount = null,
    Object? isMoved = null,
    Object? isTurned = null,
  }) {
    return _then(_$AccelerometerDataImpl(
      distanceTraveled: null == distanceTraveled
          ? _value.distanceTraveled
          : distanceTraveled // ignore: cast_nullable_to_non_nullable
              as double,
      stepCount: null == stepCount
          ? _value.stepCount
          : stepCount // ignore: cast_nullable_to_non_nullable
              as int,
      isMoved: null == isMoved
          ? _value.isMoved
          : isMoved // ignore: cast_nullable_to_non_nullable
              as bool,
      isTurned: null == isTurned
          ? _value.isTurned
          : isTurned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccelerometerDataImpl implements _AccelerometerData {
  const _$AccelerometerDataImpl(
      {this.distanceTraveled = 0.0,
      this.stepCount = 0,
      this.isMoved = false,
      this.isTurned = false});

  factory _$AccelerometerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccelerometerDataImplFromJson(json);

  @override
  @JsonKey()
  final double distanceTraveled;
  @override
  @JsonKey()
  final int stepCount;
  @override
  @JsonKey()
  final bool isMoved;
  @override
  @JsonKey()
  final bool isTurned;

  @override
  String toString() {
    return 'AccelerometerData(distanceTraveled: $distanceTraveled, stepCount: $stepCount, isMoved: $isMoved, isTurned: $isTurned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccelerometerDataImpl &&
            (identical(other.distanceTraveled, distanceTraveled) ||
                other.distanceTraveled == distanceTraveled) &&
            (identical(other.stepCount, stepCount) ||
                other.stepCount == stepCount) &&
            (identical(other.isMoved, isMoved) || other.isMoved == isMoved) &&
            (identical(other.isTurned, isTurned) ||
                other.isTurned == isTurned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, distanceTraveled, stepCount, isMoved, isTurned);

  /// Create a copy of AccelerometerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccelerometerDataImplCopyWith<_$AccelerometerDataImpl> get copyWith =>
      __$$AccelerometerDataImplCopyWithImpl<_$AccelerometerDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccelerometerDataImplToJson(
      this,
    );
  }
}

abstract class _AccelerometerData implements AccelerometerData {
  const factory _AccelerometerData(
      {final double distanceTraveled,
      final int stepCount,
      final bool isMoved,
      final bool isTurned}) = _$AccelerometerDataImpl;

  factory _AccelerometerData.fromJson(Map<String, dynamic> json) =
      _$AccelerometerDataImpl.fromJson;

  @override
  double get distanceTraveled;
  @override
  int get stepCount;
  @override
  bool get isMoved;
  @override
  bool get isTurned;

  /// Create a copy of AccelerometerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccelerometerDataImplCopyWith<_$AccelerometerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
