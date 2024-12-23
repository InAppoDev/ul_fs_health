// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gps_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GPSEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTracking,
    required TResult Function(int remainingTime) stopTracking,
    required TResult Function(Position position) updatePosition,
    required TResult Function(double averageSpeed) updateAverageSpeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function(int remainingTime)? stopTracking,
    TResult? Function(Position position)? updatePosition,
    TResult? Function(double averageSpeed)? updateAverageSpeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function(int remainingTime)? stopTracking,
    TResult Function(Position position)? updatePosition,
    TResult Function(double averageSpeed)? updateAverageSpeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTracking value) startTracking,
    required TResult Function(_StopTracking value) stopTracking,
    required TResult Function(_UpdatePosition value) updatePosition,
    required TResult Function(_UpdateAverageSpeed value) updateAverageSpeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTracking value)? startTracking,
    TResult? Function(_StopTracking value)? stopTracking,
    TResult? Function(_UpdatePosition value)? updatePosition,
    TResult? Function(_UpdateAverageSpeed value)? updateAverageSpeed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTracking value)? startTracking,
    TResult Function(_StopTracking value)? stopTracking,
    TResult Function(_UpdatePosition value)? updatePosition,
    TResult Function(_UpdateAverageSpeed value)? updateAverageSpeed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GPSEventCopyWith<$Res> {
  factory $GPSEventCopyWith(GPSEvent value, $Res Function(GPSEvent) then) =
      _$GPSEventCopyWithImpl<$Res, GPSEvent>;
}

/// @nodoc
class _$GPSEventCopyWithImpl<$Res, $Val extends GPSEvent>
    implements $GPSEventCopyWith<$Res> {
  _$GPSEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GPSEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartTrackingImplCopyWith<$Res> {
  factory _$$StartTrackingImplCopyWith(
          _$StartTrackingImpl value, $Res Function(_$StartTrackingImpl) then) =
      __$$StartTrackingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartTrackingImplCopyWithImpl<$Res>
    extends _$GPSEventCopyWithImpl<$Res, _$StartTrackingImpl>
    implements _$$StartTrackingImplCopyWith<$Res> {
  __$$StartTrackingImplCopyWithImpl(
      _$StartTrackingImpl _value, $Res Function(_$StartTrackingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GPSEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartTrackingImpl implements _StartTracking {
  const _$StartTrackingImpl();

  @override
  String toString() {
    return 'GPSEvent.startTracking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartTrackingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTracking,
    required TResult Function(int remainingTime) stopTracking,
    required TResult Function(Position position) updatePosition,
    required TResult Function(double averageSpeed) updateAverageSpeed,
  }) {
    return startTracking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function(int remainingTime)? stopTracking,
    TResult? Function(Position position)? updatePosition,
    TResult? Function(double averageSpeed)? updateAverageSpeed,
  }) {
    return startTracking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function(int remainingTime)? stopTracking,
    TResult Function(Position position)? updatePosition,
    TResult Function(double averageSpeed)? updateAverageSpeed,
    required TResult orElse(),
  }) {
    if (startTracking != null) {
      return startTracking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTracking value) startTracking,
    required TResult Function(_StopTracking value) stopTracking,
    required TResult Function(_UpdatePosition value) updatePosition,
    required TResult Function(_UpdateAverageSpeed value) updateAverageSpeed,
  }) {
    return startTracking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTracking value)? startTracking,
    TResult? Function(_StopTracking value)? stopTracking,
    TResult? Function(_UpdatePosition value)? updatePosition,
    TResult? Function(_UpdateAverageSpeed value)? updateAverageSpeed,
  }) {
    return startTracking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTracking value)? startTracking,
    TResult Function(_StopTracking value)? stopTracking,
    TResult Function(_UpdatePosition value)? updatePosition,
    TResult Function(_UpdateAverageSpeed value)? updateAverageSpeed,
    required TResult orElse(),
  }) {
    if (startTracking != null) {
      return startTracking(this);
    }
    return orElse();
  }
}

abstract class _StartTracking implements GPSEvent {
  const factory _StartTracking() = _$StartTrackingImpl;
}

/// @nodoc
abstract class _$$StopTrackingImplCopyWith<$Res> {
  factory _$$StopTrackingImplCopyWith(
          _$StopTrackingImpl value, $Res Function(_$StopTrackingImpl) then) =
      __$$StopTrackingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int remainingTime});
}

/// @nodoc
class __$$StopTrackingImplCopyWithImpl<$Res>
    extends _$GPSEventCopyWithImpl<$Res, _$StopTrackingImpl>
    implements _$$StopTrackingImplCopyWith<$Res> {
  __$$StopTrackingImplCopyWithImpl(
      _$StopTrackingImpl _value, $Res Function(_$StopTrackingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GPSEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remainingTime = null,
  }) {
    return _then(_$StopTrackingImpl(
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StopTrackingImpl implements _StopTracking {
  const _$StopTrackingImpl({required this.remainingTime});

  @override
  final int remainingTime;

  @override
  String toString() {
    return 'GPSEvent.stopTracking(remainingTime: $remainingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopTrackingImpl &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remainingTime);

  /// Create a copy of GPSEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StopTrackingImplCopyWith<_$StopTrackingImpl> get copyWith =>
      __$$StopTrackingImplCopyWithImpl<_$StopTrackingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTracking,
    required TResult Function(int remainingTime) stopTracking,
    required TResult Function(Position position) updatePosition,
    required TResult Function(double averageSpeed) updateAverageSpeed,
  }) {
    return stopTracking(remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function(int remainingTime)? stopTracking,
    TResult? Function(Position position)? updatePosition,
    TResult? Function(double averageSpeed)? updateAverageSpeed,
  }) {
    return stopTracking?.call(remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function(int remainingTime)? stopTracking,
    TResult Function(Position position)? updatePosition,
    TResult Function(double averageSpeed)? updateAverageSpeed,
    required TResult orElse(),
  }) {
    if (stopTracking != null) {
      return stopTracking(remainingTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTracking value) startTracking,
    required TResult Function(_StopTracking value) stopTracking,
    required TResult Function(_UpdatePosition value) updatePosition,
    required TResult Function(_UpdateAverageSpeed value) updateAverageSpeed,
  }) {
    return stopTracking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTracking value)? startTracking,
    TResult? Function(_StopTracking value)? stopTracking,
    TResult? Function(_UpdatePosition value)? updatePosition,
    TResult? Function(_UpdateAverageSpeed value)? updateAverageSpeed,
  }) {
    return stopTracking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTracking value)? startTracking,
    TResult Function(_StopTracking value)? stopTracking,
    TResult Function(_UpdatePosition value)? updatePosition,
    TResult Function(_UpdateAverageSpeed value)? updateAverageSpeed,
    required TResult orElse(),
  }) {
    if (stopTracking != null) {
      return stopTracking(this);
    }
    return orElse();
  }
}

abstract class _StopTracking implements GPSEvent {
  const factory _StopTracking({required final int remainingTime}) =
      _$StopTrackingImpl;

  int get remainingTime;

  /// Create a copy of GPSEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StopTrackingImplCopyWith<_$StopTrackingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePositionImplCopyWith<$Res> {
  factory _$$UpdatePositionImplCopyWith(_$UpdatePositionImpl value,
          $Res Function(_$UpdatePositionImpl) then) =
      __$$UpdatePositionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Position position});
}

/// @nodoc
class __$$UpdatePositionImplCopyWithImpl<$Res>
    extends _$GPSEventCopyWithImpl<$Res, _$UpdatePositionImpl>
    implements _$$UpdatePositionImplCopyWith<$Res> {
  __$$UpdatePositionImplCopyWithImpl(
      _$UpdatePositionImpl _value, $Res Function(_$UpdatePositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of GPSEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$UpdatePositionImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position,
    ));
  }
}

/// @nodoc

class _$UpdatePositionImpl implements _UpdatePosition {
  const _$UpdatePositionImpl(this.position);

  @override
  final Position position;

  @override
  String toString() {
    return 'GPSEvent.updatePosition(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePositionImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of GPSEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePositionImplCopyWith<_$UpdatePositionImpl> get copyWith =>
      __$$UpdatePositionImplCopyWithImpl<_$UpdatePositionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTracking,
    required TResult Function(int remainingTime) stopTracking,
    required TResult Function(Position position) updatePosition,
    required TResult Function(double averageSpeed) updateAverageSpeed,
  }) {
    return updatePosition(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function(int remainingTime)? stopTracking,
    TResult? Function(Position position)? updatePosition,
    TResult? Function(double averageSpeed)? updateAverageSpeed,
  }) {
    return updatePosition?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function(int remainingTime)? stopTracking,
    TResult Function(Position position)? updatePosition,
    TResult Function(double averageSpeed)? updateAverageSpeed,
    required TResult orElse(),
  }) {
    if (updatePosition != null) {
      return updatePosition(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTracking value) startTracking,
    required TResult Function(_StopTracking value) stopTracking,
    required TResult Function(_UpdatePosition value) updatePosition,
    required TResult Function(_UpdateAverageSpeed value) updateAverageSpeed,
  }) {
    return updatePosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTracking value)? startTracking,
    TResult? Function(_StopTracking value)? stopTracking,
    TResult? Function(_UpdatePosition value)? updatePosition,
    TResult? Function(_UpdateAverageSpeed value)? updateAverageSpeed,
  }) {
    return updatePosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTracking value)? startTracking,
    TResult Function(_StopTracking value)? stopTracking,
    TResult Function(_UpdatePosition value)? updatePosition,
    TResult Function(_UpdateAverageSpeed value)? updateAverageSpeed,
    required TResult orElse(),
  }) {
    if (updatePosition != null) {
      return updatePosition(this);
    }
    return orElse();
  }
}

abstract class _UpdatePosition implements GPSEvent {
  const factory _UpdatePosition(final Position position) = _$UpdatePositionImpl;

  Position get position;

  /// Create a copy of GPSEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePositionImplCopyWith<_$UpdatePositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAverageSpeedImplCopyWith<$Res> {
  factory _$$UpdateAverageSpeedImplCopyWith(_$UpdateAverageSpeedImpl value,
          $Res Function(_$UpdateAverageSpeedImpl) then) =
      __$$UpdateAverageSpeedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double averageSpeed});
}

/// @nodoc
class __$$UpdateAverageSpeedImplCopyWithImpl<$Res>
    extends _$GPSEventCopyWithImpl<$Res, _$UpdateAverageSpeedImpl>
    implements _$$UpdateAverageSpeedImplCopyWith<$Res> {
  __$$UpdateAverageSpeedImplCopyWithImpl(_$UpdateAverageSpeedImpl _value,
      $Res Function(_$UpdateAverageSpeedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GPSEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageSpeed = null,
  }) {
    return _then(_$UpdateAverageSpeedImpl(
      averageSpeed: null == averageSpeed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UpdateAverageSpeedImpl implements _UpdateAverageSpeed {
  const _$UpdateAverageSpeedImpl({required this.averageSpeed});

  @override
  final double averageSpeed;

  @override
  String toString() {
    return 'GPSEvent.updateAverageSpeed(averageSpeed: $averageSpeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAverageSpeedImpl &&
            (identical(other.averageSpeed, averageSpeed) ||
                other.averageSpeed == averageSpeed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, averageSpeed);

  /// Create a copy of GPSEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAverageSpeedImplCopyWith<_$UpdateAverageSpeedImpl> get copyWith =>
      __$$UpdateAverageSpeedImplCopyWithImpl<_$UpdateAverageSpeedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTracking,
    required TResult Function(int remainingTime) stopTracking,
    required TResult Function(Position position) updatePosition,
    required TResult Function(double averageSpeed) updateAverageSpeed,
  }) {
    return updateAverageSpeed(averageSpeed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTracking,
    TResult? Function(int remainingTime)? stopTracking,
    TResult? Function(Position position)? updatePosition,
    TResult? Function(double averageSpeed)? updateAverageSpeed,
  }) {
    return updateAverageSpeed?.call(averageSpeed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTracking,
    TResult Function(int remainingTime)? stopTracking,
    TResult Function(Position position)? updatePosition,
    TResult Function(double averageSpeed)? updateAverageSpeed,
    required TResult orElse(),
  }) {
    if (updateAverageSpeed != null) {
      return updateAverageSpeed(averageSpeed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTracking value) startTracking,
    required TResult Function(_StopTracking value) stopTracking,
    required TResult Function(_UpdatePosition value) updatePosition,
    required TResult Function(_UpdateAverageSpeed value) updateAverageSpeed,
  }) {
    return updateAverageSpeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTracking value)? startTracking,
    TResult? Function(_StopTracking value)? stopTracking,
    TResult? Function(_UpdatePosition value)? updatePosition,
    TResult? Function(_UpdateAverageSpeed value)? updateAverageSpeed,
  }) {
    return updateAverageSpeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTracking value)? startTracking,
    TResult Function(_StopTracking value)? stopTracking,
    TResult Function(_UpdatePosition value)? updatePosition,
    TResult Function(_UpdateAverageSpeed value)? updateAverageSpeed,
    required TResult orElse(),
  }) {
    if (updateAverageSpeed != null) {
      return updateAverageSpeed(this);
    }
    return orElse();
  }
}

abstract class _UpdateAverageSpeed implements GPSEvent {
  const factory _UpdateAverageSpeed({required final double averageSpeed}) =
      _$UpdateAverageSpeedImpl;

  double get averageSpeed;

  /// Create a copy of GPSEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAverageSpeedImplCopyWith<_$UpdateAverageSpeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GPSState {
  GPSStatus get status => throw _privateConstructorUsedError;
  double get distanceTraveled => throw _privateConstructorUsedError;
  double get speed => throw _privateConstructorUsedError;
  double get averageSpeed => throw _privateConstructorUsedError;

  /// Create a copy of GPSState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GPSStateCopyWith<GPSState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GPSStateCopyWith<$Res> {
  factory $GPSStateCopyWith(GPSState value, $Res Function(GPSState) then) =
      _$GPSStateCopyWithImpl<$Res, GPSState>;
  @useResult
  $Res call(
      {GPSStatus status,
      double distanceTraveled,
      double speed,
      double averageSpeed});
}

/// @nodoc
class _$GPSStateCopyWithImpl<$Res, $Val extends GPSState>
    implements $GPSStateCopyWith<$Res> {
  _$GPSStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GPSState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? distanceTraveled = null,
    Object? speed = null,
    Object? averageSpeed = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GPSStatus,
      distanceTraveled: null == distanceTraveled
          ? _value.distanceTraveled
          : distanceTraveled // ignore: cast_nullable_to_non_nullable
              as double,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      averageSpeed: null == averageSpeed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GPSStateImplCopyWith<$Res>
    implements $GPSStateCopyWith<$Res> {
  factory _$$GPSStateImplCopyWith(
          _$GPSStateImpl value, $Res Function(_$GPSStateImpl) then) =
      __$$GPSStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GPSStatus status,
      double distanceTraveled,
      double speed,
      double averageSpeed});
}

/// @nodoc
class __$$GPSStateImplCopyWithImpl<$Res>
    extends _$GPSStateCopyWithImpl<$Res, _$GPSStateImpl>
    implements _$$GPSStateImplCopyWith<$Res> {
  __$$GPSStateImplCopyWithImpl(
      _$GPSStateImpl _value, $Res Function(_$GPSStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GPSState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? distanceTraveled = null,
    Object? speed = null,
    Object? averageSpeed = null,
  }) {
    return _then(_$GPSStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GPSStatus,
      distanceTraveled: null == distanceTraveled
          ? _value.distanceTraveled
          : distanceTraveled // ignore: cast_nullable_to_non_nullable
              as double,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      averageSpeed: null == averageSpeed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GPSStateImpl implements _GPSState {
  const _$GPSStateImpl(
      {this.status = GPSStatus.initial,
      this.distanceTraveled = 0.0,
      this.speed = 0.0,
      this.averageSpeed = 0.0});

  @override
  @JsonKey()
  final GPSStatus status;
  @override
  @JsonKey()
  final double distanceTraveled;
  @override
  @JsonKey()
  final double speed;
  @override
  @JsonKey()
  final double averageSpeed;

  @override
  String toString() {
    return 'GPSState(status: $status, distanceTraveled: $distanceTraveled, speed: $speed, averageSpeed: $averageSpeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GPSStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.distanceTraveled, distanceTraveled) ||
                other.distanceTraveled == distanceTraveled) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.averageSpeed, averageSpeed) ||
                other.averageSpeed == averageSpeed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, distanceTraveled, speed, averageSpeed);

  /// Create a copy of GPSState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GPSStateImplCopyWith<_$GPSStateImpl> get copyWith =>
      __$$GPSStateImplCopyWithImpl<_$GPSStateImpl>(this, _$identity);
}

abstract class _GPSState implements GPSState {
  const factory _GPSState(
      {final GPSStatus status,
      final double distanceTraveled,
      final double speed,
      final double averageSpeed}) = _$GPSStateImpl;

  @override
  GPSStatus get status;
  @override
  double get distanceTraveled;
  @override
  double get speed;
  @override
  double get averageSpeed;

  /// Create a copy of GPSState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GPSStateImplCopyWith<_$GPSStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
