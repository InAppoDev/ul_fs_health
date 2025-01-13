// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionnaireModel {
  bool? get hasActivity => throw _privateConstructorUsedError;
  int? get daysInWeek => throw _privateConstructorUsedError;
  int get hours => throw _privateConstructorUsedError;
  int get minutes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool? hasActivity, int? daysInWeek, int hours, int minutes)
        from,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool? hasActivity, int? daysInWeek, int hours, int minutes)?
        from,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool? hasActivity, int? daysInWeek, int hours, int minutes)?
        from,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionnaireModel value) from,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuestionnaireModel value)? from,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionnaireModel value)? from,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireModelCopyWith<QuestionnaireModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireModelCopyWith<$Res> {
  factory $QuestionnaireModelCopyWith(
          QuestionnaireModel value, $Res Function(QuestionnaireModel) then) =
      _$QuestionnaireModelCopyWithImpl<$Res, QuestionnaireModel>;
  @useResult
  $Res call({bool? hasActivity, int? daysInWeek, int hours, int minutes});
}

/// @nodoc
class _$QuestionnaireModelCopyWithImpl<$Res, $Val extends QuestionnaireModel>
    implements $QuestionnaireModelCopyWith<$Res> {
  _$QuestionnaireModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasActivity = freezed,
    Object? daysInWeek = freezed,
    Object? hours = null,
    Object? minutes = null,
  }) {
    return _then(_value.copyWith(
      hasActivity: freezed == hasActivity
          ? _value.hasActivity
          : hasActivity // ignore: cast_nullable_to_non_nullable
              as bool?,
      daysInWeek: freezed == daysInWeek
          ? _value.daysInWeek
          : daysInWeek // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$QuestionnaireModelImplCopyWith<$Res>
    implements $QuestionnaireModelCopyWith<$Res> {
  factory _$$QuestionnaireModelImplCopyWith(_$QuestionnaireModelImpl value,
          $Res Function(_$QuestionnaireModelImpl) then) =
      __$$QuestionnaireModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? hasActivity, int? daysInWeek, int hours, int minutes});
}

/// @nodoc
class __$$QuestionnaireModelImplCopyWithImpl<$Res>
    extends _$QuestionnaireModelCopyWithImpl<$Res, _$QuestionnaireModelImpl>
    implements _$$QuestionnaireModelImplCopyWith<$Res> {
  __$$QuestionnaireModelImplCopyWithImpl(_$QuestionnaireModelImpl _value,
      $Res Function(_$QuestionnaireModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasActivity = freezed,
    Object? daysInWeek = freezed,
    Object? hours = null,
    Object? minutes = null,
  }) {
    return _then(_$QuestionnaireModelImpl(
      hasActivity: freezed == hasActivity
          ? _value.hasActivity
          : hasActivity // ignore: cast_nullable_to_non_nullable
              as bool?,
      daysInWeek: freezed == daysInWeek
          ? _value.daysInWeek
          : daysInWeek // ignore: cast_nullable_to_non_nullable
              as int?,
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

class _$QuestionnaireModelImpl implements _QuestionnaireModel {
  const _$QuestionnaireModelImpl(
      {this.hasActivity, this.daysInWeek, this.hours = 0, this.minutes = 0});

  @override
  final bool? hasActivity;
  @override
  final int? daysInWeek;
  @override
  @JsonKey()
  final int hours;
  @override
  @JsonKey()
  final int minutes;

  @override
  String toString() {
    return 'QuestionnaireModel.from(hasActivity: $hasActivity, daysInWeek: $daysInWeek, hours: $hours, minutes: $minutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireModelImpl &&
            (identical(other.hasActivity, hasActivity) ||
                other.hasActivity == hasActivity) &&
            (identical(other.daysInWeek, daysInWeek) ||
                other.daysInWeek == daysInWeek) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, hasActivity, daysInWeek, hours, minutes);

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireModelImplCopyWith<_$QuestionnaireModelImpl> get copyWith =>
      __$$QuestionnaireModelImplCopyWithImpl<_$QuestionnaireModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool? hasActivity, int? daysInWeek, int hours, int minutes)
        from,
  }) {
    return from(hasActivity, daysInWeek, hours, minutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool? hasActivity, int? daysInWeek, int hours, int minutes)?
        from,
  }) {
    return from?.call(hasActivity, daysInWeek, hours, minutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool? hasActivity, int? daysInWeek, int hours, int minutes)?
        from,
    required TResult orElse(),
  }) {
    if (from != null) {
      return from(hasActivity, daysInWeek, hours, minutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionnaireModel value) from,
  }) {
    return from(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuestionnaireModel value)? from,
  }) {
    return from?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionnaireModel value)? from,
    required TResult orElse(),
  }) {
    if (from != null) {
      return from(this);
    }
    return orElse();
  }
}

abstract class _QuestionnaireModel implements QuestionnaireModel {
  const factory _QuestionnaireModel(
      {final bool? hasActivity,
      final int? daysInWeek,
      final int hours,
      final int minutes}) = _$QuestionnaireModelImpl;

  @override
  bool? get hasActivity;
  @override
  int? get daysInWeek;
  @override
  int get hours;
  @override
  int get minutes;

  /// Create a copy of QuestionnaireModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireModelImplCopyWith<_$QuestionnaireModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
