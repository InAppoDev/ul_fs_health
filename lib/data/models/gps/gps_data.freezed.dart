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

/// @nodoc
mixin _$GPSData {
  double get distanceTraveled => throw _privateConstructorUsedError;
  double get speed => throw _privateConstructorUsedError;

  /// Create a copy of GPSData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GPSDataCopyWith<GPSData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GPSDataCopyWith<$Res> {
  factory $GPSDataCopyWith(GPSData value, $Res Function(GPSData) then) =
      _$GPSDataCopyWithImpl<$Res, GPSData>;
  @useResult
  $Res call({double distanceTraveled, double speed});
}

/// @nodoc
class _$GPSDataCopyWithImpl<$Res, $Val extends GPSData>
    implements $GPSDataCopyWith<$Res> {
  _$GPSDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GPSData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceTraveled = null,
    Object? speed = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GPSDataImplCopyWith<$Res> implements $GPSDataCopyWith<$Res> {
  factory _$$GPSDataImplCopyWith(
          _$GPSDataImpl value, $Res Function(_$GPSDataImpl) then) =
      __$$GPSDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double distanceTraveled, double speed});
}

/// @nodoc
class __$$GPSDataImplCopyWithImpl<$Res>
    extends _$GPSDataCopyWithImpl<$Res, _$GPSDataImpl>
    implements _$$GPSDataImplCopyWith<$Res> {
  __$$GPSDataImplCopyWithImpl(
      _$GPSDataImpl _value, $Res Function(_$GPSDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GPSData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distanceTraveled = null,
    Object? speed = null,
  }) {
    return _then(_$GPSDataImpl(
      distanceTraveled: null == distanceTraveled
          ? _value.distanceTraveled
          : distanceTraveled // ignore: cast_nullable_to_non_nullable
              as double,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GPSDataImpl implements _GPSData {
  const _$GPSDataImpl({this.distanceTraveled = 0.0, this.speed = 0.0});

  @override
  @JsonKey()
  final double distanceTraveled;
  @override
  @JsonKey()
  final double speed;

  @override
  String toString() {
    return 'GPSData(distanceTraveled: $distanceTraveled, speed: $speed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GPSDataImpl &&
            (identical(other.distanceTraveled, distanceTraveled) ||
                other.distanceTraveled == distanceTraveled) &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, distanceTraveled, speed);

  /// Create a copy of GPSData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GPSDataImplCopyWith<_$GPSDataImpl> get copyWith =>
      __$$GPSDataImplCopyWithImpl<_$GPSDataImpl>(this, _$identity);
}

abstract class _GPSData implements GPSData {
  const factory _GPSData({final double distanceTraveled, final double speed}) =
      _$GPSDataImpl;

  @override
  double get distanceTraveled;
  @override
  double get speed;

  /// Create a copy of GPSData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GPSDataImplCopyWith<_$GPSDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
