// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sedentary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SedentaryModel {
  int get hours => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int hours, int minutes) from,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int hours, int minutes)? from,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int hours, int minutes)? from,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SedentaryModel value) from,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SedentaryModel value)? from,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SedentaryModel value)? from,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SedentaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SedentaryModelCopyWith<SedentaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SedentaryModelCopyWith<$Res> {
  factory $SedentaryModelCopyWith(
          SedentaryModel value, $Res Function(SedentaryModel) then) =
      _$SedentaryModelCopyWithImpl<$Res, SedentaryModel>;
  @useResult
  $Res call({int hours, int minutes});
}

/// @nodoc
class _$SedentaryModelCopyWithImpl<$Res, $Val extends SedentaryModel>
    implements $SedentaryModelCopyWith<$Res> {
  _$SedentaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SedentaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = null,
    Object? minutes = null,
  }) {
    return _then(_value.copyWith(
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SedentaryModelImplCopyWith<$Res>
    implements $SedentaryModelCopyWith<$Res> {
  factory _$$SedentaryModelImplCopyWith(_$SedentaryModelImpl value,
          $Res Function(_$SedentaryModelImpl) then) =
      __$$SedentaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hours, int minutes});
}

/// @nodoc
class __$$SedentaryModelImplCopyWithImpl<$Res>
    extends _$SedentaryModelCopyWithImpl<$Res, _$SedentaryModelImpl>
    implements _$$SedentaryModelImplCopyWith<$Res> {
  __$$SedentaryModelImplCopyWithImpl(
      _$SedentaryModelImpl _value, $Res Function(_$SedentaryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SedentaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = null,
    Object? minutes = null,
  }) {
    return _then(_$SedentaryModelImpl(
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SedentaryModelImpl implements _SedentaryModel {
  const _$SedentaryModelImpl({this.hours = 0, this.minutes = 0});

  @override
  @JsonKey()
  final int hours;
  @override
  @JsonKey()
  final int minutes;

  @override
  String toString() {
    return 'SedentaryModel.from(hours: $hours, minutes: $minutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SedentaryModelImpl &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hours, minutes);

  /// Create a copy of SedentaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SedentaryModelImplCopyWith<_$SedentaryModelImpl> get copyWith =>
      __$$SedentaryModelImplCopyWithImpl<_$SedentaryModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int hours, int minutes) from,
  }) {
    return from(hours, minutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int hours, int minutes)? from,
  }) {
    return from?.call(hours, minutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int hours, int minutes)? from,
    required TResult orElse(),
  }) {
    if (from != null) {
      return from(hours, minutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SedentaryModel value) from,
  }) {
    return from(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SedentaryModel value)? from,
  }) {
    return from?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SedentaryModel value)? from,
    required TResult orElse(),
  }) {
    if (from != null) {
      return from(this);
    }
    return orElse();
  }
}

abstract class _SedentaryModel implements SedentaryModel {
  const factory _SedentaryModel({final int hours, final int minutes}) =
      _$SedentaryModelImpl;

  @override
  int get hours;
  @override
  int get minutes;

  /// Create a copy of SedentaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SedentaryModelImplCopyWith<_$SedentaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
