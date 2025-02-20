// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimerData _$TimerDataFromJson(Map<String, dynamic> json) {
  return _TimerData.fromJson(json);
}

/// @nodoc
mixin _$TimerData {
  double get progress => throw _privateConstructorUsedError;
  int get remainingTime => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this TimerData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimerDataCopyWith<TimerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerDataCopyWith<$Res> {
  factory $TimerDataCopyWith(TimerData value, $Res Function(TimerData) then) =
      _$TimerDataCopyWithImpl<$Res, TimerData>;
  @useResult
  $Res call({double progress, int remainingTime, String status});
}

/// @nodoc
class _$TimerDataCopyWithImpl<$Res, $Val extends TimerData>
    implements $TimerDataCopyWith<$Res> {
  _$TimerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? remainingTime = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimerDataImplCopyWith<$Res>
    implements $TimerDataCopyWith<$Res> {
  factory _$$TimerDataImplCopyWith(
          _$TimerDataImpl value, $Res Function(_$TimerDataImpl) then) =
      __$$TimerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double progress, int remainingTime, String status});
}

/// @nodoc
class __$$TimerDataImplCopyWithImpl<$Res>
    extends _$TimerDataCopyWithImpl<$Res, _$TimerDataImpl>
    implements _$$TimerDataImplCopyWith<$Res> {
  __$$TimerDataImplCopyWithImpl(
      _$TimerDataImpl _value, $Res Function(_$TimerDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? remainingTime = null,
    Object? status = null,
  }) {
    return _then(_$TimerDataImpl(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimerDataImpl implements _TimerData {
  const _$TimerDataImpl(
      {this.progress = 0.0, this.remainingTime = 0, this.status = 'initial'});

  factory _$TimerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimerDataImplFromJson(json);

  @override
  @JsonKey()
  final double progress;
  @override
  @JsonKey()
  final int remainingTime;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'TimerData(progress: $progress, remainingTime: $remainingTime, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerDataImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, progress, remainingTime, status);

  /// Create a copy of TimerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerDataImplCopyWith<_$TimerDataImpl> get copyWith =>
      __$$TimerDataImplCopyWithImpl<_$TimerDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimerDataImplToJson(
      this,
    );
  }
}

abstract class _TimerData implements TimerData {
  const factory _TimerData(
      {final double progress,
      final int remainingTime,
      final String status}) = _$TimerDataImpl;

  factory _TimerData.fromJson(Map<String, dynamic> json) =
      _$TimerDataImpl.fromJson;

  @override
  double get progress;
  @override
  int get remainingTime;
  @override
  String get status;

  /// Create a copy of TimerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimerDataImplCopyWith<_$TimerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
