// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackingData _$TrackingDataFromJson(Map<String, dynamic> json) {
  return _TrackingData.fromJson(json);
}

/// @nodoc
mixin _$TrackingData {
  AccelerometerData? get accelerometerData =>
      throw _privateConstructorUsedError;
  GpsData? get gpsData => throw _privateConstructorUsedError;
  bool get isGps => throw _privateConstructorUsedError;

  /// Serializes this TrackingData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrackingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrackingDataCopyWith<TrackingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingDataCopyWith<$Res> {
  factory $TrackingDataCopyWith(
          TrackingData value, $Res Function(TrackingData) then) =
      _$TrackingDataCopyWithImpl<$Res, TrackingData>;
  @useResult
  $Res call(
      {AccelerometerData? accelerometerData, GpsData? gpsData, bool isGps});

  $AccelerometerDataCopyWith<$Res>? get accelerometerData;
  $GpsDataCopyWith<$Res>? get gpsData;
}

/// @nodoc
class _$TrackingDataCopyWithImpl<$Res, $Val extends TrackingData>
    implements $TrackingDataCopyWith<$Res> {
  _$TrackingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accelerometerData = freezed,
    Object? gpsData = freezed,
    Object? isGps = null,
  }) {
    return _then(_value.copyWith(
      accelerometerData: freezed == accelerometerData
          ? _value.accelerometerData
          : accelerometerData // ignore: cast_nullable_to_non_nullable
              as AccelerometerData?,
      gpsData: freezed == gpsData
          ? _value.gpsData
          : gpsData // ignore: cast_nullable_to_non_nullable
              as GpsData?,
      isGps: null == isGps
          ? _value.isGps
          : isGps // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of TrackingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccelerometerDataCopyWith<$Res>? get accelerometerData {
    if (_value.accelerometerData == null) {
      return null;
    }

    return $AccelerometerDataCopyWith<$Res>(_value.accelerometerData!, (value) {
      return _then(_value.copyWith(accelerometerData: value) as $Val);
    });
  }

  /// Create a copy of TrackingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GpsDataCopyWith<$Res>? get gpsData {
    if (_value.gpsData == null) {
      return null;
    }

    return $GpsDataCopyWith<$Res>(_value.gpsData!, (value) {
      return _then(_value.copyWith(gpsData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackingDataImplCopyWith<$Res>
    implements $TrackingDataCopyWith<$Res> {
  factory _$$TrackingDataImplCopyWith(
          _$TrackingDataImpl value, $Res Function(_$TrackingDataImpl) then) =
      __$$TrackingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AccelerometerData? accelerometerData, GpsData? gpsData, bool isGps});

  @override
  $AccelerometerDataCopyWith<$Res>? get accelerometerData;
  @override
  $GpsDataCopyWith<$Res>? get gpsData;
}

/// @nodoc
class __$$TrackingDataImplCopyWithImpl<$Res>
    extends _$TrackingDataCopyWithImpl<$Res, _$TrackingDataImpl>
    implements _$$TrackingDataImplCopyWith<$Res> {
  __$$TrackingDataImplCopyWithImpl(
      _$TrackingDataImpl _value, $Res Function(_$TrackingDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accelerometerData = freezed,
    Object? gpsData = freezed,
    Object? isGps = null,
  }) {
    return _then(_$TrackingDataImpl(
      accelerometerData: freezed == accelerometerData
          ? _value.accelerometerData
          : accelerometerData // ignore: cast_nullable_to_non_nullable
              as AccelerometerData?,
      gpsData: freezed == gpsData
          ? _value.gpsData
          : gpsData // ignore: cast_nullable_to_non_nullable
              as GpsData?,
      isGps: null == isGps
          ? _value.isGps
          : isGps // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackingDataImpl implements _TrackingData {
  const _$TrackingDataImpl(
      {this.accelerometerData, this.gpsData, this.isGps = true});

  factory _$TrackingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackingDataImplFromJson(json);

  @override
  final AccelerometerData? accelerometerData;
  @override
  final GpsData? gpsData;
  @override
  @JsonKey()
  final bool isGps;

  @override
  String toString() {
    return 'TrackingData(accelerometerData: $accelerometerData, gpsData: $gpsData, isGps: $isGps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackingDataImpl &&
            (identical(other.accelerometerData, accelerometerData) ||
                other.accelerometerData == accelerometerData) &&
            (identical(other.gpsData, gpsData) || other.gpsData == gpsData) &&
            (identical(other.isGps, isGps) || other.isGps == isGps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accelerometerData, gpsData, isGps);

  /// Create a copy of TrackingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackingDataImplCopyWith<_$TrackingDataImpl> get copyWith =>
      __$$TrackingDataImplCopyWithImpl<_$TrackingDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackingDataImplToJson(
      this,
    );
  }
}

abstract class _TrackingData implements TrackingData {
  const factory _TrackingData(
      {final AccelerometerData? accelerometerData,
      final GpsData? gpsData,
      final bool isGps}) = _$TrackingDataImpl;

  factory _TrackingData.fromJson(Map<String, dynamic> json) =
      _$TrackingDataImpl.fromJson;

  @override
  AccelerometerData? get accelerometerData;
  @override
  GpsData? get gpsData;
  @override
  bool get isGps;

  /// Create a copy of TrackingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackingDataImplCopyWith<_$TrackingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
