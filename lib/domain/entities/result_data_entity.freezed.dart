// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResultDataEntity {
  String? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get velocity => throw _privateConstructorUsedError;

  /// Create a copy of ResultDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultDataEntityCopyWith<ResultDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDataEntityCopyWith<$Res> {
  factory $ResultDataEntityCopyWith(
          ResultDataEntity value, $Res Function(ResultDataEntity) then) =
      _$ResultDataEntityCopyWithImpl<$Res, ResultDataEntity>;
  @useResult
  $Res call({String? date, String? time, String? velocity});
}

/// @nodoc
class _$ResultDataEntityCopyWithImpl<$Res, $Val extends ResultDataEntity>
    implements $ResultDataEntityCopyWith<$Res> {
  _$ResultDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? time = freezed,
    Object? velocity = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      velocity: freezed == velocity
          ? _value.velocity
          : velocity // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultDataEntityImplCopyWith<$Res>
    implements $ResultDataEntityCopyWith<$Res> {
  factory _$$ResultDataEntityImplCopyWith(_$ResultDataEntityImpl value,
          $Res Function(_$ResultDataEntityImpl) then) =
      __$$ResultDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, String? time, String? velocity});
}

/// @nodoc
class __$$ResultDataEntityImplCopyWithImpl<$Res>
    extends _$ResultDataEntityCopyWithImpl<$Res, _$ResultDataEntityImpl>
    implements _$$ResultDataEntityImplCopyWith<$Res> {
  __$$ResultDataEntityImplCopyWithImpl(_$ResultDataEntityImpl _value,
      $Res Function(_$ResultDataEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? time = freezed,
    Object? velocity = freezed,
  }) {
    return _then(_$ResultDataEntityImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      velocity: freezed == velocity
          ? _value.velocity
          : velocity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ResultDataEntityImpl implements _ResultDataEntity {
  const _$ResultDataEntityImpl({this.date, this.time, this.velocity});

  @override
  final String? date;
  @override
  final String? time;
  @override
  final String? velocity;

  @override
  String toString() {
    return 'ResultDataEntity(date: $date, time: $time, velocity: $velocity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDataEntityImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.velocity, velocity) ||
                other.velocity == velocity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, time, velocity);

  /// Create a copy of ResultDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDataEntityImplCopyWith<_$ResultDataEntityImpl> get copyWith =>
      __$$ResultDataEntityImplCopyWithImpl<_$ResultDataEntityImpl>(
          this, _$identity);
}

abstract class _ResultDataEntity implements ResultDataEntity {
  const factory _ResultDataEntity(
      {final String? date,
      final String? time,
      final String? velocity}) = _$ResultDataEntityImpl;

  @override
  String? get date;
  @override
  String? get time;
  @override
  String? get velocity;

  /// Create a copy of ResultDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultDataEntityImplCopyWith<_$ResultDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
