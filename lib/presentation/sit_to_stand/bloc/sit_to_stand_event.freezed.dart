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
    required TResult Function() stopTest,
    required TResult Function() saveTestResult,
    required TResult Function(String userId) getTestResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTest,
    TResult? Function()? stopTest,
    TResult? Function()? saveTestResult,
    TResult? Function(String userId)? getTestResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTest,
    TResult Function()? stopTest,
    TResult Function()? saveTestResult,
    TResult Function(String userId)? getTestResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(StopTestEvent value) stopTest,
    required TResult Function(SaveTestResultEvent value) saveTestResult,
    required TResult Function(GetTestResultEvent value) getTestResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(StopTestEvent value)? stopTest,
    TResult? Function(SaveTestResultEvent value)? saveTestResult,
    TResult? Function(GetTestResultEvent value)? getTestResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(StopTestEvent value)? stopTest,
    TResult Function(SaveTestResultEvent value)? saveTestResult,
    TResult Function(GetTestResultEvent value)? getTestResult,
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
    required TResult Function() stopTest,
    required TResult Function() saveTestResult,
    required TResult Function(String userId) getTestResult,
  }) {
    return startTest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTest,
    TResult? Function()? stopTest,
    TResult? Function()? saveTestResult,
    TResult? Function(String userId)? getTestResult,
  }) {
    return startTest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTest,
    TResult Function()? stopTest,
    TResult Function()? saveTestResult,
    TResult Function(String userId)? getTestResult,
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
    required TResult Function(SaveTestResultEvent value) saveTestResult,
    required TResult Function(GetTestResultEvent value) getTestResult,
  }) {
    return startTest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(StopTestEvent value)? stopTest,
    TResult? Function(SaveTestResultEvent value)? saveTestResult,
    TResult? Function(GetTestResultEvent value)? getTestResult,
  }) {
    return startTest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(StopTestEvent value)? stopTest,
    TResult Function(SaveTestResultEvent value)? saveTestResult,
    TResult Function(GetTestResultEvent value)? getTestResult,
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
}

/// @nodoc

class _$StopTestEventImpl implements StopTestEvent {
  const _$StopTestEventImpl();

  @override
  String toString() {
    return 'SitToStandEvent.stopTest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopTestEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTest,
    required TResult Function() stopTest,
    required TResult Function() saveTestResult,
    required TResult Function(String userId) getTestResult,
  }) {
    return stopTest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTest,
    TResult? Function()? stopTest,
    TResult? Function()? saveTestResult,
    TResult? Function(String userId)? getTestResult,
  }) {
    return stopTest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTest,
    TResult Function()? stopTest,
    TResult Function()? saveTestResult,
    TResult Function(String userId)? getTestResult,
    required TResult orElse(),
  }) {
    if (stopTest != null) {
      return stopTest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(StopTestEvent value) stopTest,
    required TResult Function(SaveTestResultEvent value) saveTestResult,
    required TResult Function(GetTestResultEvent value) getTestResult,
  }) {
    return stopTest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(StopTestEvent value)? stopTest,
    TResult? Function(SaveTestResultEvent value)? saveTestResult,
    TResult? Function(GetTestResultEvent value)? getTestResult,
  }) {
    return stopTest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(StopTestEvent value)? stopTest,
    TResult Function(SaveTestResultEvent value)? saveTestResult,
    TResult Function(GetTestResultEvent value)? getTestResult,
    required TResult orElse(),
  }) {
    if (stopTest != null) {
      return stopTest(this);
    }
    return orElse();
  }
}

abstract class StopTestEvent implements SitToStandEvent {
  const factory StopTestEvent() = _$StopTestEventImpl;
}

/// @nodoc
abstract class _$$SaveTestResultEventImplCopyWith<$Res> {
  factory _$$SaveTestResultEventImplCopyWith(_$SaveTestResultEventImpl value,
          $Res Function(_$SaveTestResultEventImpl) then) =
      __$$SaveTestResultEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveTestResultEventImplCopyWithImpl<$Res>
    extends _$SitToStandEventCopyWithImpl<$Res, _$SaveTestResultEventImpl>
    implements _$$SaveTestResultEventImplCopyWith<$Res> {
  __$$SaveTestResultEventImplCopyWithImpl(_$SaveTestResultEventImpl _value,
      $Res Function(_$SaveTestResultEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SitToStandEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveTestResultEventImpl implements SaveTestResultEvent {
  const _$SaveTestResultEventImpl();

  @override
  String toString() {
    return 'SitToStandEvent.saveTestResult()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveTestResultEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTest,
    required TResult Function() stopTest,
    required TResult Function() saveTestResult,
    required TResult Function(String userId) getTestResult,
  }) {
    return saveTestResult();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTest,
    TResult? Function()? stopTest,
    TResult? Function()? saveTestResult,
    TResult? Function(String userId)? getTestResult,
  }) {
    return saveTestResult?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTest,
    TResult Function()? stopTest,
    TResult Function()? saveTestResult,
    TResult Function(String userId)? getTestResult,
    required TResult orElse(),
  }) {
    if (saveTestResult != null) {
      return saveTestResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(StopTestEvent value) stopTest,
    required TResult Function(SaveTestResultEvent value) saveTestResult,
    required TResult Function(GetTestResultEvent value) getTestResult,
  }) {
    return saveTestResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(StopTestEvent value)? stopTest,
    TResult? Function(SaveTestResultEvent value)? saveTestResult,
    TResult? Function(GetTestResultEvent value)? getTestResult,
  }) {
    return saveTestResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(StopTestEvent value)? stopTest,
    TResult Function(SaveTestResultEvent value)? saveTestResult,
    TResult Function(GetTestResultEvent value)? getTestResult,
    required TResult orElse(),
  }) {
    if (saveTestResult != null) {
      return saveTestResult(this);
    }
    return orElse();
  }
}

abstract class SaveTestResultEvent implements SitToStandEvent {
  const factory SaveTestResultEvent() = _$SaveTestResultEventImpl;
}

/// @nodoc
abstract class _$$GetTestResultEventImplCopyWith<$Res> {
  factory _$$GetTestResultEventImplCopyWith(_$GetTestResultEventImpl value,
          $Res Function(_$GetTestResultEventImpl) then) =
      __$$GetTestResultEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetTestResultEventImplCopyWithImpl<$Res>
    extends _$SitToStandEventCopyWithImpl<$Res, _$GetTestResultEventImpl>
    implements _$$GetTestResultEventImplCopyWith<$Res> {
  __$$GetTestResultEventImplCopyWithImpl(_$GetTestResultEventImpl _value,
      $Res Function(_$GetTestResultEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SitToStandEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetTestResultEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTestResultEventImpl implements GetTestResultEvent {
  const _$GetTestResultEventImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'SitToStandEvent.getTestResult(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTestResultEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of SitToStandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTestResultEventImplCopyWith<_$GetTestResultEventImpl> get copyWith =>
      __$$GetTestResultEventImplCopyWithImpl<_$GetTestResultEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTest,
    required TResult Function() stopTest,
    required TResult Function() saveTestResult,
    required TResult Function(String userId) getTestResult,
  }) {
    return getTestResult(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTest,
    TResult? Function()? stopTest,
    TResult? Function()? saveTestResult,
    TResult? Function(String userId)? getTestResult,
  }) {
    return getTestResult?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTest,
    TResult Function()? stopTest,
    TResult Function()? saveTestResult,
    TResult Function(String userId)? getTestResult,
    required TResult orElse(),
  }) {
    if (getTestResult != null) {
      return getTestResult(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartTestEvent value) startTest,
    required TResult Function(StopTestEvent value) stopTest,
    required TResult Function(SaveTestResultEvent value) saveTestResult,
    required TResult Function(GetTestResultEvent value) getTestResult,
  }) {
    return getTestResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartTestEvent value)? startTest,
    TResult? Function(StopTestEvent value)? stopTest,
    TResult? Function(SaveTestResultEvent value)? saveTestResult,
    TResult? Function(GetTestResultEvent value)? getTestResult,
  }) {
    return getTestResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartTestEvent value)? startTest,
    TResult Function(StopTestEvent value)? stopTest,
    TResult Function(SaveTestResultEvent value)? saveTestResult,
    TResult Function(GetTestResultEvent value)? getTestResult,
    required TResult orElse(),
  }) {
    if (getTestResult != null) {
      return getTestResult(this);
    }
    return orElse();
  }
}

abstract class GetTestResultEvent implements SitToStandEvent {
  const factory GetTestResultEvent({required final String userId}) =
      _$GetTestResultEventImpl;

  String get userId;

  /// Create a copy of SitToStandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTestResultEventImplCopyWith<_$GetTestResultEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
