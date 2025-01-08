// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResultEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime? date, double? distance, double? averageSpeed)
        saveResults,
    required TResult Function() getResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? date, double? distance, double? averageSpeed)?
        saveResults,
    TResult? Function()? getResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? date, double? distance, double? averageSpeed)?
        saveResults,
    TResult Function()? getResults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveResults value) saveResults,
    required TResult Function(_GetResults value) getResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveResults value)? saveResults,
    TResult? Function(_GetResults value)? getResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveResults value)? saveResults,
    TResult Function(_GetResults value)? getResults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultEventCopyWith<$Res> {
  factory $ResultEventCopyWith(
          ResultEvent value, $Res Function(ResultEvent) then) =
      _$ResultEventCopyWithImpl<$Res, ResultEvent>;
}

/// @nodoc
class _$ResultEventCopyWithImpl<$Res, $Val extends ResultEvent>
    implements $ResultEventCopyWith<$Res> {
  _$ResultEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SaveResultsImplCopyWith<$Res> {
  factory _$$SaveResultsImplCopyWith(
          _$SaveResultsImpl value, $Res Function(_$SaveResultsImpl) then) =
      __$$SaveResultsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? date, double? distance, double? averageSpeed});
}

/// @nodoc
class __$$SaveResultsImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$SaveResultsImpl>
    implements _$$SaveResultsImplCopyWith<$Res> {
  __$$SaveResultsImplCopyWithImpl(
      _$SaveResultsImpl _value, $Res Function(_$SaveResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? distance = freezed,
    Object? averageSpeed = freezed,
  }) {
    return _then(_$SaveResultsImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

class _$SaveResultsImpl implements _SaveResults {
  const _$SaveResultsImpl(
      {required this.date, required this.distance, required this.averageSpeed});

  @override
  final DateTime? date;
  @override
  final double? distance;
  @override
  final double? averageSpeed;

  @override
  String toString() {
    return 'ResultEvent.saveResults(date: $date, distance: $distance, averageSpeed: $averageSpeed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveResultsImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.averageSpeed, averageSpeed) ||
                other.averageSpeed == averageSpeed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, distance, averageSpeed);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveResultsImplCopyWith<_$SaveResultsImpl> get copyWith =>
      __$$SaveResultsImplCopyWithImpl<_$SaveResultsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime? date, double? distance, double? averageSpeed)
        saveResults,
    required TResult Function() getResults,
  }) {
    return saveResults(date, distance, averageSpeed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? date, double? distance, double? averageSpeed)?
        saveResults,
    TResult? Function()? getResults,
  }) {
    return saveResults?.call(date, distance, averageSpeed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? date, double? distance, double? averageSpeed)?
        saveResults,
    TResult Function()? getResults,
    required TResult orElse(),
  }) {
    if (saveResults != null) {
      return saveResults(date, distance, averageSpeed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveResults value) saveResults,
    required TResult Function(_GetResults value) getResults,
  }) {
    return saveResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveResults value)? saveResults,
    TResult? Function(_GetResults value)? getResults,
  }) {
    return saveResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveResults value)? saveResults,
    TResult Function(_GetResults value)? getResults,
    required TResult orElse(),
  }) {
    if (saveResults != null) {
      return saveResults(this);
    }
    return orElse();
  }
}

abstract class _SaveResults implements ResultEvent {
  const factory _SaveResults(
      {required final DateTime? date,
      required final double? distance,
      required final double? averageSpeed}) = _$SaveResultsImpl;

  DateTime? get date;
  double? get distance;
  double? get averageSpeed;

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveResultsImplCopyWith<_$SaveResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetResultsImplCopyWith<$Res> {
  factory _$$GetResultsImplCopyWith(
          _$GetResultsImpl value, $Res Function(_$GetResultsImpl) then) =
      __$$GetResultsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetResultsImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$GetResultsImpl>
    implements _$$GetResultsImplCopyWith<$Res> {
  __$$GetResultsImplCopyWithImpl(
      _$GetResultsImpl _value, $Res Function(_$GetResultsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetResultsImpl implements _GetResults {
  const _$GetResultsImpl();

  @override
  String toString() {
    return 'ResultEvent.getResults()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetResultsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime? date, double? distance, double? averageSpeed)
        saveResults,
    required TResult Function() getResults,
  }) {
    return getResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? date, double? distance, double? averageSpeed)?
        saveResults,
    TResult? Function()? getResults,
  }) {
    return getResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? date, double? distance, double? averageSpeed)?
        saveResults,
    TResult Function()? getResults,
    required TResult orElse(),
  }) {
    if (getResults != null) {
      return getResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveResults value) saveResults,
    required TResult Function(_GetResults value) getResults,
  }) {
    return getResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveResults value)? saveResults,
    TResult? Function(_GetResults value)? getResults,
  }) {
    return getResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveResults value)? saveResults,
    TResult Function(_GetResults value)? getResults,
    required TResult orElse(),
  }) {
    if (getResults != null) {
      return getResults(this);
    }
    return orElse();
  }
}

abstract class _GetResults implements ResultEvent {
  const factory _GetResults() = _$GetResultsImpl;
}

/// @nodoc
mixin _$ResultState {
  ResultStatus get status => throw _privateConstructorUsedError;
  List<WalkResultEntity> get results => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultStateCopyWith<ResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<$Res> {
  factory $ResultStateCopyWith(
          ResultState value, $Res Function(ResultState) then) =
      _$ResultStateCopyWithImpl<$Res, ResultState>;
  @useResult
  $Res call(
      {ResultStatus status, List<WalkResultEntity> results, String? errorText});
}

/// @nodoc
class _$ResultStateCopyWithImpl<$Res, $Val extends ResultState>
    implements $ResultStateCopyWith<$Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = null,
    Object? errorText = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResultStatus,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<WalkResultEntity>,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ResultStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ResultStatus status, List<WalkResultEntity> results, String? errorText});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? results = null,
    Object? errorText = freezed,
  }) {
    return _then(_$InitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ResultStatus,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<WalkResultEntity>,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.status = ResultStatus.initial,
      final List<WalkResultEntity> results = const [],
      this.errorText})
      : _results = results;

  @override
  @JsonKey()
  final ResultStatus status;
  final List<WalkResultEntity> _results;
  @override
  @JsonKey()
  List<WalkResultEntity> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final String? errorText;

  @override
  String toString() {
    return 'ResultState(status: $status, results: $results, errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_results), errorText);

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements ResultState {
  const factory _Initial(
      {final ResultStatus status,
      final List<WalkResultEntity> results,
      final String? errorText}) = _$InitialImpl;

  @override
  ResultStatus get status;
  @override
  List<WalkResultEntity> get results;
  @override
  String? get errorText;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
