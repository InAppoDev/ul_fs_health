// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResultDataModel _$ResultDataModelFromJson(Map<String, dynamic> json) {
  return _ResultDataModel.fromJson(json);
}

/// @nodoc
mixin _$ResultDataModel {
  String? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get velocity => throw _privateConstructorUsedError;

  /// Serializes this ResultDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultDataModelCopyWith<ResultDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDataModelCopyWith<$Res> {
  factory $ResultDataModelCopyWith(
          ResultDataModel value, $Res Function(ResultDataModel) then) =
      _$ResultDataModelCopyWithImpl<$Res, ResultDataModel>;
  @useResult
  $Res call({String? date, String? time, String? velocity});
}

/// @nodoc
class _$ResultDataModelCopyWithImpl<$Res, $Val extends ResultDataModel>
    implements $ResultDataModelCopyWith<$Res> {
  _$ResultDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultDataModel
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
abstract class _$$ResultDataModelImplCopyWith<$Res>
    implements $ResultDataModelCopyWith<$Res> {
  factory _$$ResultDataModelImplCopyWith(_$ResultDataModelImpl value,
          $Res Function(_$ResultDataModelImpl) then) =
      __$$ResultDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, String? time, String? velocity});
}

/// @nodoc
class __$$ResultDataModelImplCopyWithImpl<$Res>
    extends _$ResultDataModelCopyWithImpl<$Res, _$ResultDataModelImpl>
    implements _$$ResultDataModelImplCopyWith<$Res> {
  __$$ResultDataModelImplCopyWithImpl(
      _$ResultDataModelImpl _value, $Res Function(_$ResultDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? time = freezed,
    Object? velocity = freezed,
  }) {
    return _then(_$ResultDataModelImpl(
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

@JsonSerializable(includeIfNull: false)
class _$ResultDataModelImpl extends _ResultDataModel {
  const _$ResultDataModelImpl({this.date, this.time, this.velocity})
      : super._();

  factory _$ResultDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultDataModelImplFromJson(json);

  @override
  final String? date;
  @override
  final String? time;
  @override
  final String? velocity;

  @override
  String toString() {
    return 'ResultDataModel(date: $date, time: $time, velocity: $velocity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDataModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.velocity, velocity) ||
                other.velocity == velocity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, time, velocity);

  /// Create a copy of ResultDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDataModelImplCopyWith<_$ResultDataModelImpl> get copyWith =>
      __$$ResultDataModelImplCopyWithImpl<_$ResultDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultDataModelImplToJson(
      this,
    );
  }
}

abstract class _ResultDataModel extends ResultDataModel {
  const factory _ResultDataModel(
      {final String? date,
      final String? time,
      final String? velocity}) = _$ResultDataModelImpl;
  const _ResultDataModel._() : super._();

  factory _ResultDataModel.fromJson(Map<String, dynamic> json) =
      _$ResultDataModelImpl.fromJson;

  @override
  String? get date;
  @override
  String? get time;
  @override
  String? get velocity;

  /// Create a copy of ResultDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultDataModelImplCopyWith<_$ResultDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
