// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'walk_test_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalkTestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? selectedLength, bool shouldValidate)
        selectLength,
    required TResult Function(String userId) getWalkTestResult,
    required TResult Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)
        saveWalkTestResult,
    required TResult Function() resetAfterSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? selectedLength, bool shouldValidate)?
        selectLength,
    TResult? Function(String userId)? getWalkTestResult,
    TResult? Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)?
        saveWalkTestResult,
    TResult? Function()? resetAfterSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? selectedLength, bool shouldValidate)? selectLength,
    TResult Function(String userId)? getWalkTestResult,
    TResult Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)?
        saveWalkTestResult,
    TResult Function()? resetAfterSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalkTestSelect value) selectLength,
    required TResult Function(_GetWalkResultEvent value) getWalkTestResult,
    required TResult Function(_SaveWalkResultEvent value) saveWalkTestResult,
    required TResult Function(_ResetAfterSubmit value) resetAfterSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalkTestSelect value)? selectLength,
    TResult? Function(_GetWalkResultEvent value)? getWalkTestResult,
    TResult? Function(_SaveWalkResultEvent value)? saveWalkTestResult,
    TResult? Function(_ResetAfterSubmit value)? resetAfterSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalkTestSelect value)? selectLength,
    TResult Function(_GetWalkResultEvent value)? getWalkTestResult,
    TResult Function(_SaveWalkResultEvent value)? saveWalkTestResult,
    TResult Function(_ResetAfterSubmit value)? resetAfterSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkTestEventCopyWith<$Res> {
  factory $WalkTestEventCopyWith(
          WalkTestEvent value, $Res Function(WalkTestEvent) then) =
      _$WalkTestEventCopyWithImpl<$Res, WalkTestEvent>;
}

/// @nodoc
class _$WalkTestEventCopyWithImpl<$Res, $Val extends WalkTestEvent>
    implements $WalkTestEventCopyWith<$Res> {
  _$WalkTestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalkTestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WalkTestSelectImplCopyWith<$Res> {
  factory _$$WalkTestSelectImplCopyWith(_$WalkTestSelectImpl value,
          $Res Function(_$WalkTestSelectImpl) then) =
      __$$WalkTestSelectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? selectedLength, bool shouldValidate});
}

/// @nodoc
class __$$WalkTestSelectImplCopyWithImpl<$Res>
    extends _$WalkTestEventCopyWithImpl<$Res, _$WalkTestSelectImpl>
    implements _$$WalkTestSelectImplCopyWith<$Res> {
  __$$WalkTestSelectImplCopyWithImpl(
      _$WalkTestSelectImpl _value, $Res Function(_$WalkTestSelectImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalkTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLength = freezed,
    Object? shouldValidate = null,
  }) {
    return _then(_$WalkTestSelectImpl(
      selectedLength: freezed == selectedLength
          ? _value.selectedLength
          : selectedLength // ignore: cast_nullable_to_non_nullable
              as double?,
      shouldValidate: null == shouldValidate
          ? _value.shouldValidate
          : shouldValidate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WalkTestSelectImpl implements _WalkTestSelect {
  const _$WalkTestSelectImpl({this.selectedLength, this.shouldValidate = true});

  @override
  final double? selectedLength;
  @override
  @JsonKey()
  final bool shouldValidate;

  @override
  String toString() {
    return 'WalkTestEvent.selectLength(selectedLength: $selectedLength, shouldValidate: $shouldValidate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalkTestSelectImpl &&
            (identical(other.selectedLength, selectedLength) ||
                other.selectedLength == selectedLength) &&
            (identical(other.shouldValidate, shouldValidate) ||
                other.shouldValidate == shouldValidate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLength, shouldValidate);

  /// Create a copy of WalkTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalkTestSelectImplCopyWith<_$WalkTestSelectImpl> get copyWith =>
      __$$WalkTestSelectImplCopyWithImpl<_$WalkTestSelectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? selectedLength, bool shouldValidate)
        selectLength,
    required TResult Function(String userId) getWalkTestResult,
    required TResult Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)
        saveWalkTestResult,
    required TResult Function() resetAfterSubmit,
  }) {
    return selectLength(selectedLength, shouldValidate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? selectedLength, bool shouldValidate)?
        selectLength,
    TResult? Function(String userId)? getWalkTestResult,
    TResult? Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)?
        saveWalkTestResult,
    TResult? Function()? resetAfterSubmit,
  }) {
    return selectLength?.call(selectedLength, shouldValidate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? selectedLength, bool shouldValidate)? selectLength,
    TResult Function(String userId)? getWalkTestResult,
    TResult Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)?
        saveWalkTestResult,
    TResult Function()? resetAfterSubmit,
    required TResult orElse(),
  }) {
    if (selectLength != null) {
      return selectLength(selectedLength, shouldValidate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalkTestSelect value) selectLength,
    required TResult Function(_GetWalkResultEvent value) getWalkTestResult,
    required TResult Function(_SaveWalkResultEvent value) saveWalkTestResult,
    required TResult Function(_ResetAfterSubmit value) resetAfterSubmit,
  }) {
    return selectLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalkTestSelect value)? selectLength,
    TResult? Function(_GetWalkResultEvent value)? getWalkTestResult,
    TResult? Function(_SaveWalkResultEvent value)? saveWalkTestResult,
    TResult? Function(_ResetAfterSubmit value)? resetAfterSubmit,
  }) {
    return selectLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalkTestSelect value)? selectLength,
    TResult Function(_GetWalkResultEvent value)? getWalkTestResult,
    TResult Function(_SaveWalkResultEvent value)? saveWalkTestResult,
    TResult Function(_ResetAfterSubmit value)? resetAfterSubmit,
    required TResult orElse(),
  }) {
    if (selectLength != null) {
      return selectLength(this);
    }
    return orElse();
  }
}

abstract class _WalkTestSelect implements WalkTestEvent {
  const factory _WalkTestSelect(
      {final double? selectedLength,
      final bool shouldValidate}) = _$WalkTestSelectImpl;

  double? get selectedLength;
  bool get shouldValidate;

  /// Create a copy of WalkTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalkTestSelectImplCopyWith<_$WalkTestSelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWalkResultEventImplCopyWith<$Res> {
  factory _$$GetWalkResultEventImplCopyWith(_$GetWalkResultEventImpl value,
          $Res Function(_$GetWalkResultEventImpl) then) =
      __$$GetWalkResultEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetWalkResultEventImplCopyWithImpl<$Res>
    extends _$WalkTestEventCopyWithImpl<$Res, _$GetWalkResultEventImpl>
    implements _$$GetWalkResultEventImplCopyWith<$Res> {
  __$$GetWalkResultEventImplCopyWithImpl(_$GetWalkResultEventImpl _value,
      $Res Function(_$GetWalkResultEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalkTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetWalkResultEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetWalkResultEventImpl implements _GetWalkResultEvent {
  const _$GetWalkResultEventImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'WalkTestEvent.getWalkTestResult(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWalkResultEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of WalkTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWalkResultEventImplCopyWith<_$GetWalkResultEventImpl> get copyWith =>
      __$$GetWalkResultEventImplCopyWithImpl<_$GetWalkResultEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? selectedLength, bool shouldValidate)
        selectLength,
    required TResult Function(String userId) getWalkTestResult,
    required TResult Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)
        saveWalkTestResult,
    required TResult Function() resetAfterSubmit,
  }) {
    return getWalkTestResult(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? selectedLength, bool shouldValidate)?
        selectLength,
    TResult? Function(String userId)? getWalkTestResult,
    TResult? Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)?
        saveWalkTestResult,
    TResult? Function()? resetAfterSubmit,
  }) {
    return getWalkTestResult?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? selectedLength, bool shouldValidate)? selectLength,
    TResult Function(String userId)? getWalkTestResult,
    TResult Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)?
        saveWalkTestResult,
    TResult Function()? resetAfterSubmit,
    required TResult orElse(),
  }) {
    if (getWalkTestResult != null) {
      return getWalkTestResult(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalkTestSelect value) selectLength,
    required TResult Function(_GetWalkResultEvent value) getWalkTestResult,
    required TResult Function(_SaveWalkResultEvent value) saveWalkTestResult,
    required TResult Function(_ResetAfterSubmit value) resetAfterSubmit,
  }) {
    return getWalkTestResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalkTestSelect value)? selectLength,
    TResult? Function(_GetWalkResultEvent value)? getWalkTestResult,
    TResult? Function(_SaveWalkResultEvent value)? saveWalkTestResult,
    TResult? Function(_ResetAfterSubmit value)? resetAfterSubmit,
  }) {
    return getWalkTestResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalkTestSelect value)? selectLength,
    TResult Function(_GetWalkResultEvent value)? getWalkTestResult,
    TResult Function(_SaveWalkResultEvent value)? saveWalkTestResult,
    TResult Function(_ResetAfterSubmit value)? resetAfterSubmit,
    required TResult orElse(),
  }) {
    if (getWalkTestResult != null) {
      return getWalkTestResult(this);
    }
    return orElse();
  }
}

abstract class _GetWalkResultEvent implements WalkTestEvent {
  const factory _GetWalkResultEvent({required final String userId}) =
      _$GetWalkResultEventImpl;

  String get userId;

  /// Create a copy of WalkTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetWalkResultEventImplCopyWith<_$GetWalkResultEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveWalkResultEventImplCopyWith<$Res> {
  factory _$$SaveWalkResultEventImplCopyWith(_$SaveWalkResultEventImpl value,
          $Res Function(_$SaveWalkResultEventImpl) then) =
      __$$SaveWalkResultEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      DateTime? date,
      double? distance,
      double? length,
      double? averageSpeed});
}

/// @nodoc
class __$$SaveWalkResultEventImplCopyWithImpl<$Res>
    extends _$WalkTestEventCopyWithImpl<$Res, _$SaveWalkResultEventImpl>
    implements _$$SaveWalkResultEventImplCopyWith<$Res> {
  __$$SaveWalkResultEventImplCopyWithImpl(_$SaveWalkResultEventImpl _value,
      $Res Function(_$SaveWalkResultEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalkTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? date = freezed,
    Object? distance = freezed,
    Object? length = freezed,
    Object? averageSpeed = freezed,
  }) {
    return _then(_$SaveWalkResultEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double?,
      averageSpeed: freezed == averageSpeed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$SaveWalkResultEventImpl implements _SaveWalkResultEvent {
  const _$SaveWalkResultEventImpl(
      {required this.userId,
      this.date,
      this.distance,
      this.length,
      this.averageSpeed});

  @override
  final String userId;
  @override
  final DateTime? date;
  @override
  final double? distance;
  @override
  final double? length;
  @override
  final double? averageSpeed;

  @override
  String toString() {
    return 'WalkTestEvent.saveWalkTestResult(userId: $userId, date: $date, distance: $distance, length: $length, averageSpeed: $averageSpeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveWalkResultEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.averageSpeed, averageSpeed) ||
                other.averageSpeed == averageSpeed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, date, distance, length, averageSpeed);

  /// Create a copy of WalkTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveWalkResultEventImplCopyWith<_$SaveWalkResultEventImpl> get copyWith =>
      __$$SaveWalkResultEventImplCopyWithImpl<_$SaveWalkResultEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? selectedLength, bool shouldValidate)
        selectLength,
    required TResult Function(String userId) getWalkTestResult,
    required TResult Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)
        saveWalkTestResult,
    required TResult Function() resetAfterSubmit,
  }) {
    return saveWalkTestResult(userId, date, distance, length, averageSpeed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? selectedLength, bool shouldValidate)?
        selectLength,
    TResult? Function(String userId)? getWalkTestResult,
    TResult? Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)?
        saveWalkTestResult,
    TResult? Function()? resetAfterSubmit,
  }) {
    return saveWalkTestResult?.call(
        userId, date, distance, length, averageSpeed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? selectedLength, bool shouldValidate)? selectLength,
    TResult Function(String userId)? getWalkTestResult,
    TResult Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)?
        saveWalkTestResult,
    TResult Function()? resetAfterSubmit,
    required TResult orElse(),
  }) {
    if (saveWalkTestResult != null) {
      return saveWalkTestResult(userId, date, distance, length, averageSpeed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalkTestSelect value) selectLength,
    required TResult Function(_GetWalkResultEvent value) getWalkTestResult,
    required TResult Function(_SaveWalkResultEvent value) saveWalkTestResult,
    required TResult Function(_ResetAfterSubmit value) resetAfterSubmit,
  }) {
    return saveWalkTestResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalkTestSelect value)? selectLength,
    TResult? Function(_GetWalkResultEvent value)? getWalkTestResult,
    TResult? Function(_SaveWalkResultEvent value)? saveWalkTestResult,
    TResult? Function(_ResetAfterSubmit value)? resetAfterSubmit,
  }) {
    return saveWalkTestResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalkTestSelect value)? selectLength,
    TResult Function(_GetWalkResultEvent value)? getWalkTestResult,
    TResult Function(_SaveWalkResultEvent value)? saveWalkTestResult,
    TResult Function(_ResetAfterSubmit value)? resetAfterSubmit,
    required TResult orElse(),
  }) {
    if (saveWalkTestResult != null) {
      return saveWalkTestResult(this);
    }
    return orElse();
  }
}

abstract class _SaveWalkResultEvent implements WalkTestEvent {
  const factory _SaveWalkResultEvent(
      {required final String userId,
      final DateTime? date,
      final double? distance,
      final double? length,
      final double? averageSpeed}) = _$SaveWalkResultEventImpl;

  String get userId;
  DateTime? get date;
  double? get distance;
  double? get length;
  double? get averageSpeed;

  /// Create a copy of WalkTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveWalkResultEventImplCopyWith<_$SaveWalkResultEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetAfterSubmitImplCopyWith<$Res> {
  factory _$$ResetAfterSubmitImplCopyWith(_$ResetAfterSubmitImpl value,
          $Res Function(_$ResetAfterSubmitImpl) then) =
      __$$ResetAfterSubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetAfterSubmitImplCopyWithImpl<$Res>
    extends _$WalkTestEventCopyWithImpl<$Res, _$ResetAfterSubmitImpl>
    implements _$$ResetAfterSubmitImplCopyWith<$Res> {
  __$$ResetAfterSubmitImplCopyWithImpl(_$ResetAfterSubmitImpl _value,
      $Res Function(_$ResetAfterSubmitImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalkTestEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetAfterSubmitImpl implements _ResetAfterSubmit {
  const _$ResetAfterSubmitImpl();

  @override
  String toString() {
    return 'WalkTestEvent.resetAfterSubmit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetAfterSubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? selectedLength, bool shouldValidate)
        selectLength,
    required TResult Function(String userId) getWalkTestResult,
    required TResult Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)
        saveWalkTestResult,
    required TResult Function() resetAfterSubmit,
  }) {
    return resetAfterSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? selectedLength, bool shouldValidate)?
        selectLength,
    TResult? Function(String userId)? getWalkTestResult,
    TResult? Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)?
        saveWalkTestResult,
    TResult? Function()? resetAfterSubmit,
  }) {
    return resetAfterSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? selectedLength, bool shouldValidate)? selectLength,
    TResult Function(String userId)? getWalkTestResult,
    TResult Function(String userId, DateTime? date, double? distance,
            double? length, double? averageSpeed)?
        saveWalkTestResult,
    TResult Function()? resetAfterSubmit,
    required TResult orElse(),
  }) {
    if (resetAfterSubmit != null) {
      return resetAfterSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalkTestSelect value) selectLength,
    required TResult Function(_GetWalkResultEvent value) getWalkTestResult,
    required TResult Function(_SaveWalkResultEvent value) saveWalkTestResult,
    required TResult Function(_ResetAfterSubmit value) resetAfterSubmit,
  }) {
    return resetAfterSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalkTestSelect value)? selectLength,
    TResult? Function(_GetWalkResultEvent value)? getWalkTestResult,
    TResult? Function(_SaveWalkResultEvent value)? saveWalkTestResult,
    TResult? Function(_ResetAfterSubmit value)? resetAfterSubmit,
  }) {
    return resetAfterSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalkTestSelect value)? selectLength,
    TResult Function(_GetWalkResultEvent value)? getWalkTestResult,
    TResult Function(_SaveWalkResultEvent value)? saveWalkTestResult,
    TResult Function(_ResetAfterSubmit value)? resetAfterSubmit,
    required TResult orElse(),
  }) {
    if (resetAfterSubmit != null) {
      return resetAfterSubmit(this);
    }
    return orElse();
  }
}

abstract class _ResetAfterSubmit implements WalkTestEvent {
  const factory _ResetAfterSubmit() = _$ResetAfterSubmitImpl;
}

/// @nodoc
mixin _$WalkTestState {
  WalkTestStatus get status => throw _privateConstructorUsedError;
  double? get selectedLength => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  List<WalkResultEntity>? get walkResults => throw _privateConstructorUsedError;

  /// Create a copy of WalkTestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalkTestStateCopyWith<WalkTestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkTestStateCopyWith<$Res> {
  factory $WalkTestStateCopyWith(
          WalkTestState value, $Res Function(WalkTestState) then) =
      _$WalkTestStateCopyWithImpl<$Res, WalkTestState>;
  @useResult
  $Res call(
      {WalkTestStatus status,
      double? selectedLength,
      String? errorText,
      bool isValid,
      List<WalkResultEntity>? walkResults});
}

/// @nodoc
class _$WalkTestStateCopyWithImpl<$Res, $Val extends WalkTestState>
    implements $WalkTestStateCopyWith<$Res> {
  _$WalkTestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalkTestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedLength = freezed,
    Object? errorText = freezed,
    Object? isValid = null,
    Object? walkResults = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WalkTestStatus,
      selectedLength: freezed == selectedLength
          ? _value.selectedLength
          : selectedLength // ignore: cast_nullable_to_non_nullable
              as double?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      walkResults: freezed == walkResults
          ? _value.walkResults
          : walkResults // ignore: cast_nullable_to_non_nullable
              as List<WalkResultEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $WalkTestStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WalkTestStatus status,
      double? selectedLength,
      String? errorText,
      bool isValid,
      List<WalkResultEntity>? walkResults});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WalkTestStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalkTestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectedLength = freezed,
    Object? errorText = freezed,
    Object? isValid = null,
    Object? walkResults = freezed,
  }) {
    return _then(_$InitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WalkTestStatus,
      selectedLength: freezed == selectedLength
          ? _value.selectedLength
          : selectedLength // ignore: cast_nullable_to_non_nullable
              as double?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      walkResults: freezed == walkResults
          ? _value._walkResults
          : walkResults // ignore: cast_nullable_to_non_nullable
              as List<WalkResultEntity>?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.status = WalkTestStatus.initial,
      this.selectedLength,
      this.errorText,
      this.isValid = false,
      final List<WalkResultEntity>? walkResults})
      : _walkResults = walkResults;

  @override
  @JsonKey()
  final WalkTestStatus status;
  @override
  final double? selectedLength;
  @override
  final String? errorText;
  @override
  @JsonKey()
  final bool isValid;
  final List<WalkResultEntity>? _walkResults;
  @override
  List<WalkResultEntity>? get walkResults {
    final value = _walkResults;
    if (value == null) return null;
    if (_walkResults is EqualUnmodifiableListView) return _walkResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WalkTestState(status: $status, selectedLength: $selectedLength, errorText: $errorText, isValid: $isValid, walkResults: $walkResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedLength, selectedLength) ||
                other.selectedLength == selectedLength) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            const DeepCollectionEquality()
                .equals(other._walkResults, _walkResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, selectedLength,
      errorText, isValid, const DeepCollectionEquality().hash(_walkResults));

  /// Create a copy of WalkTestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements WalkTestState {
  const factory _Initial(
      {final WalkTestStatus status,
      final double? selectedLength,
      final String? errorText,
      final bool isValid,
      final List<WalkResultEntity>? walkResults}) = _$InitialImpl;

  @override
  WalkTestStatus get status;
  @override
  double? get selectedLength;
  @override
  String? get errorText;
  @override
  bool get isValid;
  @override
  List<WalkResultEntity>? get walkResults;

  /// Create a copy of WalkTestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
