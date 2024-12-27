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
  DateTime? get date => throw _privateConstructorUsedError;
  double? get resultTime => throw _privateConstructorUsedError;
  double? get velocity => throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  DocumentReference<Map<String, dynamic>>? get userRef =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {DateTime? date,
      double? resultTime,
      double? velocity,
      @DocumentReferenceConverter()
      DocumentReference<Map<String, dynamic>>? userRef});
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
    Object? resultTime = freezed,
    Object? velocity = freezed,
    Object? userRef = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resultTime: freezed == resultTime
          ? _value.resultTime
          : resultTime // ignore: cast_nullable_to_non_nullable
              as double?,
      velocity: freezed == velocity
          ? _value.velocity
          : velocity // ignore: cast_nullable_to_non_nullable
              as double?,
      userRef: freezed == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Map<String, dynamic>>?,
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
  $Res call(
      {DateTime? date,
      double? resultTime,
      double? velocity,
      @DocumentReferenceConverter()
      DocumentReference<Map<String, dynamic>>? userRef});
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
    Object? resultTime = freezed,
    Object? velocity = freezed,
    Object? userRef = freezed,
  }) {
    return _then(_$ResultDataEntityImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resultTime: freezed == resultTime
          ? _value.resultTime
          : resultTime // ignore: cast_nullable_to_non_nullable
              as double?,
      velocity: freezed == velocity
          ? _value.velocity
          : velocity // ignore: cast_nullable_to_non_nullable
              as double?,
      userRef: freezed == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Map<String, dynamic>>?,
    ));
  }
}

/// @nodoc

class _$ResultDataEntityImpl implements _ResultDataEntity {
  const _$ResultDataEntityImpl(
      {this.date,
      this.resultTime,
      this.velocity,
      @DocumentReferenceConverter() this.userRef});

  @override
  final DateTime? date;
  @override
  final double? resultTime;
  @override
  final double? velocity;
  @override
  @DocumentReferenceConverter()
  final DocumentReference<Map<String, dynamic>>? userRef;

  @override
  String toString() {
    return 'ResultDataEntity(date: $date, resultTime: $resultTime, velocity: $velocity, userRef: $userRef)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDataEntityImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.resultTime, resultTime) ||
                other.resultTime == resultTime) &&
            (identical(other.velocity, velocity) ||
                other.velocity == velocity) &&
            (identical(other.userRef, userRef) || other.userRef == userRef));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, date, resultTime, velocity, userRef);

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
          {final DateTime? date,
          final double? resultTime,
          final double? velocity,
          @DocumentReferenceConverter()
          final DocumentReference<Map<String, dynamic>>? userRef}) =
      _$ResultDataEntityImpl;

  @override
  DateTime? get date;
  @override
  double? get resultTime;
  @override
  double? get velocity;
  @override
  @DocumentReferenceConverter()
  DocumentReference<Map<String, dynamic>>? get userRef;

  /// Create a copy of ResultDataEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultDataEntityImplCopyWith<_$ResultDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
