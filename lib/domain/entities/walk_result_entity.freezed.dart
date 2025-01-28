// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'walk_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalkResultEntity {
  @DocumentReferenceConverter()
  DocumentReference<Map<String, dynamic>> get userRef =>
      throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  double? get length => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  double? get averageSpeed => throw _privateConstructorUsedError;

  /// Create a copy of WalkResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalkResultEntityCopyWith<WalkResultEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkResultEntityCopyWith<$Res> {
  factory $WalkResultEntityCopyWith(
          WalkResultEntity value, $Res Function(WalkResultEntity) then) =
      _$WalkResultEntityCopyWithImpl<$Res, WalkResultEntity>;
  @useResult
  $Res call(
      {@DocumentReferenceConverter()
      DocumentReference<Map<String, dynamic>> userRef,
      DateTime? date,
      double? length,
      double? distance,
      double? averageSpeed});
}

/// @nodoc
class _$WalkResultEntityCopyWithImpl<$Res, $Val extends WalkResultEntity>
    implements $WalkResultEntityCopyWith<$Res> {
  _$WalkResultEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalkResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = null,
    Object? date = freezed,
    Object? length = freezed,
    Object? distance = freezed,
    Object? averageSpeed = freezed,
  }) {
    return _then(_value.copyWith(
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Map<String, dynamic>>,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      averageSpeed: freezed == averageSpeed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalkResultEntityImplCopyWith<$Res>
    implements $WalkResultEntityCopyWith<$Res> {
  factory _$$WalkResultEntityImplCopyWith(_$WalkResultEntityImpl value,
          $Res Function(_$WalkResultEntityImpl) then) =
      __$$WalkResultEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DocumentReferenceConverter()
      DocumentReference<Map<String, dynamic>> userRef,
      DateTime? date,
      double? length,
      double? distance,
      double? averageSpeed});
}

/// @nodoc
class __$$WalkResultEntityImplCopyWithImpl<$Res>
    extends _$WalkResultEntityCopyWithImpl<$Res, _$WalkResultEntityImpl>
    implements _$$WalkResultEntityImplCopyWith<$Res> {
  __$$WalkResultEntityImplCopyWithImpl(_$WalkResultEntityImpl _value,
      $Res Function(_$WalkResultEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalkResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = null,
    Object? date = freezed,
    Object? length = freezed,
    Object? distance = freezed,
    Object? averageSpeed = freezed,
  }) {
    return _then(_$WalkResultEntityImpl(
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Map<String, dynamic>>,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      averageSpeed: freezed == averageSpeed
          ? _value.averageSpeed
          : averageSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$WalkResultEntityImpl implements _WalkResultEntity {
  const _$WalkResultEntityImpl(
      {@DocumentReferenceConverter() required this.userRef,
      this.date,
      this.length,
      this.distance,
      this.averageSpeed});

  @override
  @DocumentReferenceConverter()
  final DocumentReference<Map<String, dynamic>> userRef;
  @override
  final DateTime? date;
  @override
  final double? length;
  @override
  final double? distance;
  @override
  final double? averageSpeed;

  @override
  String toString() {
    return 'WalkResultEntity(userRef: $userRef, date: $date, length: $length, distance: $distance, averageSpeed: $averageSpeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalkResultEntityImpl &&
            (identical(other.userRef, userRef) || other.userRef == userRef) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.averageSpeed, averageSpeed) ||
                other.averageSpeed == averageSpeed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userRef, date, length, distance, averageSpeed);

  /// Create a copy of WalkResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalkResultEntityImplCopyWith<_$WalkResultEntityImpl> get copyWith =>
      __$$WalkResultEntityImplCopyWithImpl<_$WalkResultEntityImpl>(
          this, _$identity);
}

abstract class _WalkResultEntity implements WalkResultEntity {
  const factory _WalkResultEntity(
      {@DocumentReferenceConverter()
      required final DocumentReference<Map<String, dynamic>> userRef,
      final DateTime? date,
      final double? length,
      final double? distance,
      final double? averageSpeed}) = _$WalkResultEntityImpl;

  @override
  @DocumentReferenceConverter()
  DocumentReference<Map<String, dynamic>> get userRef;
  @override
  DateTime? get date;
  @override
  double? get length;
  @override
  double? get distance;
  @override
  double? get averageSpeed;

  /// Create a copy of WalkResultEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalkResultEntityImplCopyWith<_$WalkResultEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
