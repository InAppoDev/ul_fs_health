// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoordinateModel {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get z => throw _privateConstructorUsedError;

  /// Create a copy of CoordinateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoordinateModelCopyWith<CoordinateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateModelCopyWith<$Res> {
  factory $CoordinateModelCopyWith(
          CoordinateModel value, $Res Function(CoordinateModel) then) =
      _$CoordinateModelCopyWithImpl<$Res, CoordinateModel>;
  @useResult
  $Res call({double x, double y, double z});
}

/// @nodoc
class _$CoordinateModelCopyWithImpl<$Res, $Val extends CoordinateModel>
    implements $CoordinateModelCopyWith<$Res> {
  _$CoordinateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoordinateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? z = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordinateModelImplCopyWith<$Res>
    implements $CoordinateModelCopyWith<$Res> {
  factory _$$CoordinateModelImplCopyWith(_$CoordinateModelImpl value,
          $Res Function(_$CoordinateModelImpl) then) =
      __$$CoordinateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y, double z});
}

/// @nodoc
class __$$CoordinateModelImplCopyWithImpl<$Res>
    extends _$CoordinateModelCopyWithImpl<$Res, _$CoordinateModelImpl>
    implements _$$CoordinateModelImplCopyWith<$Res> {
  __$$CoordinateModelImplCopyWithImpl(
      _$CoordinateModelImpl _value, $Res Function(_$CoordinateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoordinateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? z = null,
  }) {
    return _then(_$CoordinateModelImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CoordinateModelImpl implements _CoordinateModel {
  const _$CoordinateModelImpl({this.x = 0.0, this.y = 0.0, this.z = 0.0});

  @override
  @JsonKey()
  final double x;
  @override
  @JsonKey()
  final double y;
  @override
  @JsonKey()
  final double z;

  @override
  String toString() {
    return 'CoordinateModel(x: $x, y: $y, z: $z)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinateModelImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.z, z) || other.z == z));
  }

  @override
  int get hashCode => Object.hash(runtimeType, x, y, z);

  /// Create a copy of CoordinateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinateModelImplCopyWith<_$CoordinateModelImpl> get copyWith =>
      __$$CoordinateModelImplCopyWithImpl<_$CoordinateModelImpl>(
          this, _$identity);
}

abstract class _CoordinateModel implements CoordinateModel {
  const factory _CoordinateModel(
      {final double x, final double y, final double z}) = _$CoordinateModelImpl;

  @override
  double get x;
  @override
  double get y;
  @override
  double get z;

  /// Create a copy of CoordinateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordinateModelImplCopyWith<_$CoordinateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
