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
  String? get selectedLength => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedLength) selectLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedLength)? selectLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedLength)? selectLength,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalkTestSelect value) selectLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalkTestSelect value)? selectLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalkTestSelect value)? selectLength,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of WalkTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalkTestEventCopyWith<WalkTestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkTestEventCopyWith<$Res> {
  factory $WalkTestEventCopyWith(
          WalkTestEvent value, $Res Function(WalkTestEvent) then) =
      _$WalkTestEventCopyWithImpl<$Res, WalkTestEvent>;
  @useResult
  $Res call({String? selectedLength});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLength = freezed,
  }) {
    return _then(_value.copyWith(
      selectedLength: freezed == selectedLength
          ? _value.selectedLength
          : selectedLength // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalkTestSelectImplCopyWith<$Res>
    implements $WalkTestEventCopyWith<$Res> {
  factory _$$WalkTestSelectImplCopyWith(_$WalkTestSelectImpl value,
          $Res Function(_$WalkTestSelectImpl) then) =
      __$$WalkTestSelectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? selectedLength});
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
  }) {
    return _then(_$WalkTestSelectImpl(
      freezed == selectedLength
          ? _value.selectedLength
          : selectedLength // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WalkTestSelectImpl implements _WalkTestSelect {
  const _$WalkTestSelectImpl(this.selectedLength);

  @override
  final String? selectedLength;

  @override
  String toString() {
    return 'WalkTestEvent.selectLength(selectedLength: $selectedLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalkTestSelectImpl &&
            (identical(other.selectedLength, selectedLength) ||
                other.selectedLength == selectedLength));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLength);

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
    required TResult Function(String? selectedLength) selectLength,
  }) {
    return selectLength(selectedLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedLength)? selectLength,
  }) {
    return selectLength?.call(selectedLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedLength)? selectLength,
    required TResult orElse(),
  }) {
    if (selectLength != null) {
      return selectLength(selectedLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WalkTestSelect value) selectLength,
  }) {
    return selectLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WalkTestSelect value)? selectLength,
  }) {
    return selectLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WalkTestSelect value)? selectLength,
    required TResult orElse(),
  }) {
    if (selectLength != null) {
      return selectLength(this);
    }
    return orElse();
  }
}

abstract class _WalkTestSelect implements WalkTestEvent {
  const factory _WalkTestSelect(final String? selectedLength) =
      _$WalkTestSelectImpl;

  @override
  String? get selectedLength;

  /// Create a copy of WalkTestEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalkTestSelectImplCopyWith<_$WalkTestSelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalkTestState {
  WalkTestStatus get status => throw _privateConstructorUsedError;
  String? get selectedLength => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

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
  $Res call({WalkTestStatus status, String? selectedLength, bool isValid});
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
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WalkTestStatus,
      selectedLength: freezed == selectedLength
          ? _value.selectedLength
          : selectedLength // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({WalkTestStatus status, String? selectedLength, bool isValid});
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
    Object? isValid = null,
  }) {
    return _then(_$InitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WalkTestStatus,
      selectedLength: freezed == selectedLength
          ? _value.selectedLength
          : selectedLength // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.status = WalkTestStatus.initial,
      this.selectedLength,
      this.isValid = false});

  @override
  @JsonKey()
  final WalkTestStatus status;
  @override
  final String? selectedLength;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'WalkTestState(status: $status, selectedLength: $selectedLength, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.selectedLength, selectedLength) ||
                other.selectedLength == selectedLength) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, selectedLength, isValid);

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
      final String? selectedLength,
      final bool isValid}) = _$InitialImpl;

  @override
  WalkTestStatus get status;
  @override
  String? get selectedLength;
  @override
  bool get isValid;

  /// Create a copy of WalkTestState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
