// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sit_to_stand_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SitToStandEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTest,
    required TResult Function(DocumentReference<Object?> userRef) stopTest,
    required TResult Function(double avgTime) updateTestReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTest,
    TResult? Function(DocumentReference<Object?> userRef)? stopTest,
    TResult? Function(double avgTime)? updateTestReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTest,
    TResult Function(DocumentReference<Object?> userRef)? stopTest,
    TResult Function(double avgTime)? updateTestReady,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(StopTestEvent value) stopTest,
    required TResult Function(UpdateTestReadyEvent value) updateTestReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(StopTestEvent value)? stopTest,
    TResult? Function(UpdateTestReadyEvent value)? updateTestReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(StopTestEvent value)? stopTest,
    TResult Function(UpdateTestReadyEvent value)? updateTestReady,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SitToStandEventCopyWith<$Res> {
  factory $SitToStandEventCopyWith(
          SitToStandEvent value, $Res Function(SitToStandEvent) then) =
      _$SitToStandEventCopyWithImpl<$Res, SitToStandEvent>;
}

/// @nodoc
class _$SitToStandEventCopyWithImpl<$Res, $Val extends SitToStandEvent>
    implements $SitToStandEventCopyWith<$Res> {
  _$SitToStandEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SitToStandEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartTestEventImplCopyWith<$Res> {
  factory _$$StartTestEventImplCopyWith(_$StartTestEventImpl value,
          $Res Function(_$StartTestEventImpl) then) =
      __$$StartTestEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartTestEventImplCopyWithImpl<$Res>
    extends _$SitToStandEventCopyWithImpl<$Res, _$StartTestEventImpl>
    implements _$$StartTestEventImplCopyWith<$Res> {
  __$$StartTestEventImplCopyWithImpl(
      _$StartTestEventImpl _value, $Res Function(_$StartTestEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SitToStandEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartTestEventImpl implements StartTestEvent {
  const _$StartTestEventImpl();

  @override
  String toString() {
    return 'SitToStandEvent.startTest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartTestEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTest,
    required TResult Function(DocumentReference<Object?> userRef) stopTest,
    required TResult Function(double avgTime) updateTestReady,
  }) {
    return startTest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTest,
    TResult? Function(DocumentReference<Object?> userRef)? stopTest,
    TResult? Function(double avgTime)? updateTestReady,
  }) {
    return startTest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTest,
    TResult Function(DocumentReference<Object?> userRef)? stopTest,
    TResult Function(double avgTime)? updateTestReady,
    required TResult orElse(),
  }) {
    if (startTest != null) {
      return startTest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(StopTestEvent value) stopTest,
    required TResult Function(UpdateTestReadyEvent value) updateTestReady,
  }) {
    return startTest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(StopTestEvent value)? stopTest,
    TResult? Function(UpdateTestReadyEvent value)? updateTestReady,
  }) {
    return startTest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(StopTestEvent value)? stopTest,
    TResult Function(UpdateTestReadyEvent value)? updateTestReady,
    required TResult orElse(),
  }) {
    if (startTest != null) {
      return startTest(this);
    }
    return orElse();
  }
}

abstract class StartTestEvent implements SitToStandEvent {
  const factory StartTestEvent() = _$StartTestEventImpl;
}

/// @nodoc
abstract class _$$StopTestEventImplCopyWith<$Res> {
  factory _$$StopTestEventImplCopyWith(
          _$StopTestEventImpl value, $Res Function(_$StopTestEventImpl) then) =
      __$$StopTestEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DocumentReference<Object?> userRef});
}

/// @nodoc
class __$$StopTestEventImplCopyWithImpl<$Res>
    extends _$SitToStandEventCopyWithImpl<$Res, _$StopTestEventImpl>
    implements _$$StopTestEventImplCopyWith<$Res> {
  __$$StopTestEventImplCopyWithImpl(
      _$StopTestEventImpl _value, $Res Function(_$StopTestEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SitToStandEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = null,
  }) {
    return _then(_$StopTestEventImpl(
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>,
    ));
  }
}

/// @nodoc

class _$StopTestEventImpl implements StopTestEvent {
  const _$StopTestEventImpl({required this.userRef});

  @override
  final DocumentReference<Object?> userRef;

  @override
  String toString() {
    return 'SitToStandEvent.stopTest(userRef: $userRef)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopTestEventImpl &&
            (identical(other.userRef, userRef) || other.userRef == userRef));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRef);

  /// Create a copy of SitToStandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StopTestEventImplCopyWith<_$StopTestEventImpl> get copyWith =>
      __$$StopTestEventImplCopyWithImpl<_$StopTestEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTest,
    required TResult Function(DocumentReference<Object?> userRef) stopTest,
    required TResult Function(double avgTime) updateTestReady,
  }) {
    return stopTest(userRef);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTest,
    TResult? Function(DocumentReference<Object?> userRef)? stopTest,
    TResult? Function(double avgTime)? updateTestReady,
  }) {
    return stopTest?.call(userRef);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTest,
    TResult Function(DocumentReference<Object?> userRef)? stopTest,
    TResult Function(double avgTime)? updateTestReady,
    required TResult orElse(),
  }) {
    if (stopTest != null) {
      return stopTest(userRef);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(StopTestEvent value) stopTest,
    required TResult Function(UpdateTestReadyEvent value) updateTestReady,
  }) {
    return stopTest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(StopTestEvent value)? stopTest,
    TResult? Function(UpdateTestReadyEvent value)? updateTestReady,
  }) {
    return stopTest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(StopTestEvent value)? stopTest,
    TResult Function(UpdateTestReadyEvent value)? updateTestReady,
    required TResult orElse(),
  }) {
    if (stopTest != null) {
      return stopTest(this);
    }
    return orElse();
  }
}

abstract class StopTestEvent implements SitToStandEvent {
  const factory StopTestEvent(
          {required final DocumentReference<Object?> userRef}) =
      _$StopTestEventImpl;

  DocumentReference<Object?> get userRef;

  /// Create a copy of SitToStandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StopTestEventImplCopyWith<_$StopTestEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTestReadyEventImplCopyWith<$Res> {
  factory _$$UpdateTestReadyEventImplCopyWith(_$UpdateTestReadyEventImpl value,
          $Res Function(_$UpdateTestReadyEventImpl) then) =
      __$$UpdateTestReadyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double avgTime});
}

/// @nodoc
class __$$UpdateTestReadyEventImplCopyWithImpl<$Res>
    extends _$SitToStandEventCopyWithImpl<$Res, _$UpdateTestReadyEventImpl>
    implements _$$UpdateTestReadyEventImplCopyWith<$Res> {
  __$$UpdateTestReadyEventImplCopyWithImpl(_$UpdateTestReadyEventImpl _value,
      $Res Function(_$UpdateTestReadyEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SitToStandEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgTime = null,
  }) {
    return _then(_$UpdateTestReadyEventImpl(
      avgTime: null == avgTime
          ? _value.avgTime
          : avgTime // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UpdateTestReadyEventImpl implements UpdateTestReadyEvent {
  const _$UpdateTestReadyEventImpl({required this.avgTime});

  @override
  final double avgTime;

  @override
  String toString() {
    return 'SitToStandEvent.updateTestReady(avgTime: $avgTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTestReadyEventImpl &&
            (identical(other.avgTime, avgTime) || other.avgTime == avgTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avgTime);

  /// Create a copy of SitToStandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTestReadyEventImplCopyWith<_$UpdateTestReadyEventImpl>
      get copyWith =>
          __$$UpdateTestReadyEventImplCopyWithImpl<_$UpdateTestReadyEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTest,
    required TResult Function(DocumentReference<Object?> userRef) stopTest,
    required TResult Function(double avgTime) updateTestReady,
  }) {
    return updateTestReady(avgTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTest,
    TResult? Function(DocumentReference<Object?> userRef)? stopTest,
    TResult? Function(double avgTime)? updateTestReady,
  }) {
    return updateTestReady?.call(avgTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTest,
    TResult Function(DocumentReference<Object?> userRef)? stopTest,
    TResult Function(double avgTime)? updateTestReady,
    required TResult orElse(),
  }) {
    if (updateTestReady != null) {
      return updateTestReady(avgTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(StopTestEvent value) stopTest,
    required TResult Function(UpdateTestReadyEvent value) updateTestReady,
  }) {
    return updateTestReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(StopTestEvent value)? stopTest,
    TResult? Function(UpdateTestReadyEvent value)? updateTestReady,
  }) {
    return updateTestReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(StopTestEvent value)? stopTest,
    TResult Function(UpdateTestReadyEvent value)? updateTestReady,
    required TResult orElse(),
  }) {
    if (updateTestReady != null) {
      return updateTestReady(this);
    }
    return orElse();
  }
}

abstract class UpdateTestReadyEvent implements SitToStandEvent {
  const factory UpdateTestReadyEvent({required final double avgTime}) =
      _$UpdateTestReadyEventImpl;

  double get avgTime;

  /// Create a copy of SitToStandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTestReadyEventImplCopyWith<_$UpdateTestReadyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
