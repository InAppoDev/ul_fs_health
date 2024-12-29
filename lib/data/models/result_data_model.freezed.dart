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
  DateTime? get date => throw _privateConstructorUsedError;
  double? get resultTime => throw _privateConstructorUsedError;
  double? get velocity => throw _privateConstructorUsedError;
  @DocumentReferenceConverter()
  DocumentReference<Map<String, dynamic>>? get userRef =>
      throw _privateConstructorUsedError;

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
  $Res call(
      {DateTime? date,
      double? resultTime,
      double? velocity,
      @DocumentReferenceConverter()
      DocumentReference<Map<String, dynamic>>? userRef});
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
abstract class _$$ResultDataModelImplCopyWith<$Res>
    implements $ResultDataModelCopyWith<$Res> {
  factory _$$ResultDataModelImplCopyWith(_$ResultDataModelImpl value,
          $Res Function(_$ResultDataModelImpl) then) =
      __$$ResultDataModelImplCopyWithImpl<$Res>;
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
    Object? resultTime = freezed,
    Object? velocity = freezed,
    Object? userRef = freezed,
  }) {
    return _then(_$ResultDataModelImpl(
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

@JsonSerializable(includeIfNull: false)
class _$ResultDataModelImpl extends _ResultDataModel {
  const _$ResultDataModelImpl(
      {this.date,
      this.resultTime,
      this.velocity,
      @DocumentReferenceConverter() this.userRef})
      : super._();

  factory _$ResultDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultDataModelImplFromJson(json);

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
    return 'ResultDataModel(date: $date, resultTime: $resultTime, velocity: $velocity, userRef: $userRef)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDataModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.resultTime, resultTime) ||
                other.resultTime == resultTime) &&
            (identical(other.velocity, velocity) ||
                other.velocity == velocity) &&
            (identical(other.userRef, userRef) || other.userRef == userRef));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, resultTime, velocity, userRef);

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
          {final DateTime? date,
          final double? resultTime,
          final double? velocity,
          @DocumentReferenceConverter()
          final DocumentReference<Map<String, dynamic>>? userRef}) =
      _$ResultDataModelImpl;
  const _ResultDataModel._() : super._();

  factory _ResultDataModel.fromJson(Map<String, dynamic> json) =
      _$ResultDataModelImpl.fromJson;

  @override
  DateTime? get date;
  @override
  double? get resultTime;
  @override
  double? get velocity;
  @override
  @DocumentReferenceConverter()
  DocumentReference<Map<String, dynamic>>? get userRef;

  /// Create a copy of ResultDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultDataModelImplCopyWith<_$ResultDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
