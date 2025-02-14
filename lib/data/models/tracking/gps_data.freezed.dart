// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gps_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GpsData _$GpsDataFromJson(Map<String, dynamic> json) {
  return _GpsData.fromJson(json);
}

/// @nodoc
mixin _$GpsData {
  double get distanceTraveled => throw _privateConstructorUsedError;
  double get speed => throw _privateConstructorUsedError;
  double get accuracy => throw _privateConstructorUsedError;
  bool get isGPSSignalStrong => throw _privateConstructorUsedError;
  int get stepCount => throw _privateConstructorUsedError;

  /// Serializes this GpsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GpsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GpsDataCopyWith<GpsData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GpsDataCopyWith<$Res> {
  factory $GpsDataCopyWith(GpsData value, $Res Function(GpsData) then) =
      _$GpsDataCopyWithImpl<$Res, GpsData>;
  @useResult
  $Res call(
      {double distanceTraveled,
      double speed,
      double accuracy,
      bool isGPSSignalStrong,
      int stepCount});
}

/// @nodoc
class _$GpsDataCopyWithImpl<$Res, $Val extends GpsData>
    implements $GpsDataCopyWith<$Res> {
  _$GpsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GpsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceTraveled = null,
    Object? speed = null,
    Object? accuracy = null,
    Object? isGPSSignalStrong = null,
    Object? stepCount = null,
  }) {
    return _then(_value.copyWith(
      distanceTraveled: null == distanceTraveled
          ? _value.distanceTraveled
          : distanceTraveled // ignore: cast_nullable_to_non_nullable
              as double,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      accuracy: null == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double,
      isGPSSignalStrong: null == isGPSSignalStrong
          ? _value.isGPSSignalStrong
          : isGPSSignalStrong // ignore: cast_nullable_to_non_nullable
              as bool,
      stepCount: null == stepCount
          ? _value.stepCount
          : stepCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GpsDataImplCopyWith<$Res> implements $GpsDataCopyWith<$Res> {
  factory _$$GpsDataImplCopyWith(
          _$GpsDataImpl value, $Res Function(_$GpsDataImpl) then) =
      __$$GpsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double distanceTraveled,
      double speed,
      double accuracy,
      bool isGPSSignalStrong,
      int stepCount});
}

/// @nodoc
class __$$GpsDataImplCopyWithImpl<$Res>
    extends _$GpsDataCopyWithImpl<$Res, _$GpsDataImpl>
    implements _$$GpsDataImplCopyWith<$Res> {
  __$$GpsDataImplCopyWithImpl(
      _$GpsDataImpl _value, $Res Function(_$GpsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GpsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceTraveled = null,
    Object? speed = null,
    Object? accuracy = null,
    Object? isGPSSignalStrong = null,
    Object? stepCount = null,
  }) {
    return _then(_$GpsDataImpl(
      distanceTraveled: null == distanceTraveled
          ? _value.distanceTraveled
          : distanceTraveled // ignore: cast_nullable_to_non_nullable
              as double,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      accuracy: null == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double,
      isGPSSignalStrong: null == isGPSSignalStrong
          ? _value.isGPSSignalStrong
          : isGPSSignalStrong // ignore: cast_nullable_to_non_nullable
              as bool,
      stepCount: null == stepCount
          ? _value.stepCount
          : stepCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GpsDataImpl implements _GpsData {
  const _$GpsDataImpl(
      {this.distanceTraveled = 0.0,
      this.speed = 0.0,
      this.accuracy = 0.0,
      this.isGPSSignalStrong = true,
      this.stepCount = 0});

  factory _$GpsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GpsDataImplFromJson(json);

  @override
  @JsonKey()
  final double distanceTraveled;
  @override
  @JsonKey()
  final double speed;
  @override
  @JsonKey()
  final double accuracy;
  @override
  @JsonKey()
  final bool isGPSSignalStrong;
  @override
  @JsonKey()
  final int stepCount;

  @override
  String toString() {
    return 'GpsData(distanceTraveled: $distanceTraveled, speed: $speed, accuracy: $accuracy, isGPSSignalStrong: $isGPSSignalStrong, stepCount: $stepCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GpsDataImpl &&
            (identical(other.distanceTraveled, distanceTraveled) ||
                other.distanceTraveled == distanceTraveled) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.isGPSSignalStrong, isGPSSignalStrong) ||
                other.isGPSSignalStrong == isGPSSignalStrong) &&
            (identical(other.stepCount, stepCount) ||
                other.stepCount == stepCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, distanceTraveled, speed,
      accuracy, isGPSSignalStrong, stepCount);

  /// Create a copy of GpsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GpsDataImplCopyWith<_$GpsDataImpl> get copyWith =>
      __$$GpsDataImplCopyWithImpl<_$GpsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GpsDataImplToJson(
      this,
    );
  }
}

abstract class _GpsData implements GpsData {
  const factory _GpsData(
      {final double distanceTraveled,
      final double speed,
      final double accuracy,
      final bool isGPSSignalStrong,
      final int stepCount}) = _$GpsDataImpl;

  factory _GpsData.fromJson(Map<String, dynamic> json) = _$GpsDataImpl.fromJson;

  @override
  double get distanceTraveled;
  @override
  double get speed;
  @override
  double get accuracy;
  @override
  bool get isGPSSignalStrong;
  @override
  int get stepCount;

  /// Create a copy of GpsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GpsDataImplCopyWith<_$GpsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
