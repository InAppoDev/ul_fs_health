// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionnaireEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionnaireSubmit value) onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireSubmit value)? onSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionnaireSubmit value)? onSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireEventCopyWith<$Res> {
  factory $QuestionnaireEventCopyWith(
          QuestionnaireEvent value, $Res Function(QuestionnaireEvent) then) =
      _$QuestionnaireEventCopyWithImpl<$Res, QuestionnaireEvent>;
}

/// @nodoc
class _$QuestionnaireEventCopyWithImpl<$Res, $Val extends QuestionnaireEvent>
    implements $QuestionnaireEventCopyWith<$Res> {
  _$QuestionnaireEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$QuestionnaireSubmitImplCopyWith<$Res> {
  factory _$$QuestionnaireSubmitImplCopyWith(_$QuestionnaireSubmitImpl value,
          $Res Function(_$QuestionnaireSubmitImpl) then) =
      __$$QuestionnaireSubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionnaireSubmitImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$QuestionnaireSubmitImpl>
    implements _$$QuestionnaireSubmitImplCopyWith<$Res> {
  __$$QuestionnaireSubmitImplCopyWithImpl(_$QuestionnaireSubmitImpl _value,
      $Res Function(_$QuestionnaireSubmitImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$QuestionnaireSubmitImpl implements QuestionnaireSubmit {
  _$QuestionnaireSubmitImpl();

  @override
  String toString() {
    return 'QuestionnaireEvent.onSubmit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireSubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubmit,
  }) {
    return onSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSubmit,
  }) {
    return onSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubmit,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionnaireSubmit value) onSubmit,
  }) {
    return onSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireSubmit value)? onSubmit,
  }) {
    return onSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionnaireSubmit value)? onSubmit,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit(this);
    }
    return orElse();
  }
}

abstract class QuestionnaireSubmit implements QuestionnaireEvent {
  factory QuestionnaireSubmit() = _$QuestionnaireSubmitImpl;
}

/// @nodoc
mixin _$QuestionnaireState {
  QuestionnaireStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireStatus status) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireStatus status)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireStatus status)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionnaireStateInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuestionnaireStateInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionnaireStateInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireStateCopyWith<QuestionnaireState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireStateCopyWith<$Res> {
  factory $QuestionnaireStateCopyWith(
          QuestionnaireState value, $Res Function(QuestionnaireState) then) =
      _$QuestionnaireStateCopyWithImpl<$Res, QuestionnaireState>;
  @useResult
  $Res call({QuestionnaireStatus status});
}

/// @nodoc
class _$QuestionnaireStateCopyWithImpl<$Res, $Val extends QuestionnaireState>
    implements $QuestionnaireStateCopyWith<$Res> {
  _$QuestionnaireStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionnaireStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionnaireStateInitialImplCopyWith<$Res>
    implements $QuestionnaireStateCopyWith<$Res> {
  factory _$$QuestionnaireStateInitialImplCopyWith(
          _$QuestionnaireStateInitialImpl value,
          $Res Function(_$QuestionnaireStateInitialImpl) then) =
      __$$QuestionnaireStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuestionnaireStatus status});
}

/// @nodoc
class __$$QuestionnaireStateInitialImplCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res,
        _$QuestionnaireStateInitialImpl>
    implements _$$QuestionnaireStateInitialImplCopyWith<$Res> {
  __$$QuestionnaireStateInitialImplCopyWithImpl(
      _$QuestionnaireStateInitialImpl _value,
      $Res Function(_$QuestionnaireStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$QuestionnaireStateInitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionnaireStatus,
    ));
  }
}

/// @nodoc

class _$QuestionnaireStateInitialImpl implements _QuestionnaireStateInitial {
  _$QuestionnaireStateInitialImpl({this.status = QuestionnaireStatus.initial});

  @override
  @JsonKey()
  final QuestionnaireStatus status;

  @override
  String toString() {
    return 'QuestionnaireState.initial(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireStateInitialImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireStateInitialImplCopyWith<_$QuestionnaireStateInitialImpl>
      get copyWith => __$$QuestionnaireStateInitialImplCopyWithImpl<
          _$QuestionnaireStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireStatus status) initial,
  }) {
    return initial(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireStatus status)? initial,
  }) {
    return initial?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireStatus status)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionnaireStateInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuestionnaireStateInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionnaireStateInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _QuestionnaireStateInitial implements QuestionnaireState {
  factory _QuestionnaireStateInitial({final QuestionnaireStatus status}) =
      _$QuestionnaireStateInitialImpl;

  @override
  QuestionnaireStatus get status;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireStateInitialImplCopyWith<_$QuestionnaireStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
