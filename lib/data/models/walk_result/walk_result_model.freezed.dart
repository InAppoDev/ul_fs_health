// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'walk_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalkResultModel _$WalkResultModelFromJson(Map<String, dynamic> json) {
  return _WalkResultModel.fromJson(json);
}

/// @nodoc
mixin _$WalkResultModel {
  @DocumentReferenceConverter()
  DocumentReference<Map<String, dynamic>> get userRef =>
      throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  double? get length => throw _privateConstructorUsedError;
  double? get averageSpeed => throw _privateConstructorUsedError;

  /// Serializes this WalkResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalkResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalkResultModelCopyWith<WalkResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkResultModelCopyWith<$Res> {
  factory $WalkResultModelCopyWith(
          WalkResultModel value, $Res Function(WalkResultModel) then) =
      _$WalkResultModelCopyWithImpl<$Res, WalkResultModel>;
  @useResult
  $Res call(
      {@DocumentReferenceConverter()
      DocumentReference<Map<String, dynamic>> userRef,
      DateTime? date,
      double? distance,
      double? length,
      double? averageSpeed});
}

/// @nodoc
class _$WalkResultModelCopyWithImpl<$Res, $Val extends WalkResultModel>
    implements $WalkResultModelCopyWith<$Res> {
  _$WalkResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalkResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = null,
    Object? date = freezed,
    Object? distance = freezed,
    Object? length = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalkResultModelImplCopyWith<$Res>
    implements $WalkResultModelCopyWith<$Res> {
  factory _$$WalkResultModelImplCopyWith(_$WalkResultModelImpl value,
          $Res Function(_$WalkResultModelImpl) then) =
      __$$WalkResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DocumentReferenceConverter()
      DocumentReference<Map<String, dynamic>> userRef,
      DateTime? date,
      double? distance,
      double? length,
      double? averageSpeed});
}

/// @nodoc
class __$$WalkResultModelImplCopyWithImpl<$Res>
    extends _$WalkResultModelCopyWithImpl<$Res, _$WalkResultModelImpl>
    implements _$$WalkResultModelImplCopyWith<$Res> {
  __$$WalkResultModelImplCopyWithImpl(
      _$WalkResultModelImpl _value, $Res Function(_$WalkResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalkResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRef = null,
    Object? date = freezed,
    Object? distance = freezed,
    Object? length = freezed,
    Object? averageSpeed = freezed,
  }) {
    return _then(_$WalkResultModelImpl(
      userRef: null == userRef
          ? _value.userRef
          : userRef // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Map<String, dynamic>>,
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
@JsonSerializable()
class _$WalkResultModelImpl extends _WalkResultModel {
  const _$WalkResultModelImpl(
      {@DocumentReferenceConverter() required this.userRef,
      this.date,
      this.distance,
      this.length,
      this.averageSpeed})
      : super._();

  factory _$WalkResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalkResultModelImplFromJson(json);

  @override
  @DocumentReferenceConverter()
  final DocumentReference<Map<String, dynamic>> userRef;
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
    return 'WalkResultModel(userRef: $userRef, date: $date, distance: $distance, length: $length, averageSpeed: $averageSpeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalkResultModelImpl &&
            (identical(other.userRef, userRef) || other.userRef == userRef) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.averageSpeed, averageSpeed) ||
                other.averageSpeed == averageSpeed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userRef, date, distance, length, averageSpeed);

  /// Create a copy of WalkResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalkResultModelImplCopyWith<_$WalkResultModelImpl> get copyWith =>
      __$$WalkResultModelImplCopyWithImpl<_$WalkResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalkResultModelImplToJson(
      this,
    );
  }
}

abstract class _WalkResultModel extends WalkResultModel {
  const factory _WalkResultModel(
      {@DocumentReferenceConverter()
      required final DocumentReference<Map<String, dynamic>> userRef,
      final DateTime? date,
      final double? distance,
      final double? length,
      final double? averageSpeed}) = _$WalkResultModelImpl;
  const _WalkResultModel._() : super._();

  factory _WalkResultModel.fromJson(Map<String, dynamic> json) =
      _$WalkResultModelImpl.fromJson;

  @override
  @DocumentReferenceConverter()
  DocumentReference<Map<String, dynamic>> get userRef;
  @override
  DateTime? get date;
  @override
  double? get distance;
  @override
  double? get length;
  @override
  double? get averageSpeed;

  /// Create a copy of WalkResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalkResultModelImplCopyWith<_$WalkResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
