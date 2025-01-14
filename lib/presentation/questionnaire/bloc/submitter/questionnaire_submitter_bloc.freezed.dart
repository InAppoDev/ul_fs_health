// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_submitter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionnaireSubmitterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireModel workData) submitWork,
    required TResult Function(bool hasActivity) submitWorkInitial,
    required TResult Function(QuestionnaireModel travelData) submitTravel,
    required TResult Function(QuestionnaireModel recreationData)
        submitRecreation,
    required TResult Function(SedentaryModel sedentaryData) submitSedentary,
    required TResult Function(Map<String, DifficultyLevel> lefsData) submitLEFS,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireModel workData)? submitWork,
    TResult? Function(bool hasActivity)? submitWorkInitial,
    TResult? Function(QuestionnaireModel travelData)? submitTravel,
    TResult? Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult? Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult? Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireModel workData)? submitWork,
    TResult Function(bool hasActivity)? submitWorkInitial,
    TResult Function(QuestionnaireModel travelData)? submitTravel,
    TResult Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitWork value) submitWork,
    required TResult Function(_SubmitWorkInitial value) submitWorkInitial,
    required TResult Function(_SubmitTravel value) submitTravel,
    required TResult Function(_SubmitRecreation value) submitRecreation,
    required TResult Function(_SubmitSedentary value) submitSedentary,
    required TResult Function(_SubmitLEFS value) submitLEFS,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitWork value)? submitWork,
    TResult? Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult? Function(_SubmitTravel value)? submitTravel,
    TResult? Function(_SubmitRecreation value)? submitRecreation,
    TResult? Function(_SubmitSedentary value)? submitSedentary,
    TResult? Function(_SubmitLEFS value)? submitLEFS,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitWork value)? submitWork,
    TResult Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult Function(_SubmitTravel value)? submitTravel,
    TResult Function(_SubmitRecreation value)? submitRecreation,
    TResult Function(_SubmitSedentary value)? submitSedentary,
    TResult Function(_SubmitLEFS value)? submitLEFS,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireSubmitterEventCopyWith<$Res> {
  factory $QuestionnaireSubmitterEventCopyWith(
          QuestionnaireSubmitterEvent value,
          $Res Function(QuestionnaireSubmitterEvent) then) =
      _$QuestionnaireSubmitterEventCopyWithImpl<$Res,
          QuestionnaireSubmitterEvent>;
}

/// @nodoc
class _$QuestionnaireSubmitterEventCopyWithImpl<$Res,
        $Val extends QuestionnaireSubmitterEvent>
    implements $QuestionnaireSubmitterEventCopyWith<$Res> {
  _$QuestionnaireSubmitterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SubmitWorkImplCopyWith<$Res> {
  factory _$$SubmitWorkImplCopyWith(
          _$SubmitWorkImpl value, $Res Function(_$SubmitWorkImpl) then) =
      __$$SubmitWorkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionnaireModel workData});

  $QuestionnaireModelCopyWith<$Res> get workData;
}

/// @nodoc
class __$$SubmitWorkImplCopyWithImpl<$Res>
    extends _$QuestionnaireSubmitterEventCopyWithImpl<$Res, _$SubmitWorkImpl>
    implements _$$SubmitWorkImplCopyWith<$Res> {
  __$$SubmitWorkImplCopyWithImpl(
      _$SubmitWorkImpl _value, $Res Function(_$SubmitWorkImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workData = null,
  }) {
    return _then(_$SubmitWorkImpl(
      workData: null == workData
          ? _value.workData
          : workData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel,
    ));
  }

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireModelCopyWith<$Res> get workData {
    return $QuestionnaireModelCopyWith<$Res>(_value.workData, (value) {
      return _then(_value.copyWith(workData: value));
    });
  }
}

/// @nodoc

class _$SubmitWorkImpl implements _SubmitWork {
  _$SubmitWorkImpl({required this.workData});

  @override
  final QuestionnaireModel workData;

  @override
  String toString() {
    return 'QuestionnaireSubmitterEvent.submitWork(workData: $workData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitWorkImpl &&
            (identical(other.workData, workData) ||
                other.workData == workData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, workData);

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitWorkImplCopyWith<_$SubmitWorkImpl> get copyWith =>
      __$$SubmitWorkImplCopyWithImpl<_$SubmitWorkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireModel workData) submitWork,
    required TResult Function(bool hasActivity) submitWorkInitial,
    required TResult Function(QuestionnaireModel travelData) submitTravel,
    required TResult Function(QuestionnaireModel recreationData)
        submitRecreation,
    required TResult Function(SedentaryModel sedentaryData) submitSedentary,
    required TResult Function(Map<String, DifficultyLevel> lefsData) submitLEFS,
    required TResult Function() reset,
  }) {
    return submitWork(workData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireModel workData)? submitWork,
    TResult? Function(bool hasActivity)? submitWorkInitial,
    TResult? Function(QuestionnaireModel travelData)? submitTravel,
    TResult? Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult? Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult? Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult? Function()? reset,
  }) {
    return submitWork?.call(workData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireModel workData)? submitWork,
    TResult Function(bool hasActivity)? submitWorkInitial,
    TResult Function(QuestionnaireModel travelData)? submitTravel,
    TResult Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (submitWork != null) {
      return submitWork(workData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitWork value) submitWork,
    required TResult Function(_SubmitWorkInitial value) submitWorkInitial,
    required TResult Function(_SubmitTravel value) submitTravel,
    required TResult Function(_SubmitRecreation value) submitRecreation,
    required TResult Function(_SubmitSedentary value) submitSedentary,
    required TResult Function(_SubmitLEFS value) submitLEFS,
    required TResult Function(_Reset value) reset,
  }) {
    return submitWork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitWork value)? submitWork,
    TResult? Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult? Function(_SubmitTravel value)? submitTravel,
    TResult? Function(_SubmitRecreation value)? submitRecreation,
    TResult? Function(_SubmitSedentary value)? submitSedentary,
    TResult? Function(_SubmitLEFS value)? submitLEFS,
    TResult? Function(_Reset value)? reset,
  }) {
    return submitWork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitWork value)? submitWork,
    TResult Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult Function(_SubmitTravel value)? submitTravel,
    TResult Function(_SubmitRecreation value)? submitRecreation,
    TResult Function(_SubmitSedentary value)? submitSedentary,
    TResult Function(_SubmitLEFS value)? submitLEFS,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (submitWork != null) {
      return submitWork(this);
    }
    return orElse();
  }
}

abstract class _SubmitWork implements QuestionnaireSubmitterEvent {
  factory _SubmitWork({required final QuestionnaireModel workData}) =
      _$SubmitWorkImpl;

  QuestionnaireModel get workData;

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitWorkImplCopyWith<_$SubmitWorkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitWorkInitialImplCopyWith<$Res> {
  factory _$$SubmitWorkInitialImplCopyWith(_$SubmitWorkInitialImpl value,
          $Res Function(_$SubmitWorkInitialImpl) then) =
      __$$SubmitWorkInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasActivity});
}

/// @nodoc
class __$$SubmitWorkInitialImplCopyWithImpl<$Res>
    extends _$QuestionnaireSubmitterEventCopyWithImpl<$Res,
        _$SubmitWorkInitialImpl>
    implements _$$SubmitWorkInitialImplCopyWith<$Res> {
  __$$SubmitWorkInitialImplCopyWithImpl(_$SubmitWorkInitialImpl _value,
      $Res Function(_$SubmitWorkInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasActivity = null,
  }) {
    return _then(_$SubmitWorkInitialImpl(
      hasActivity: null == hasActivity
          ? _value.hasActivity
          : hasActivity // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SubmitWorkInitialImpl implements _SubmitWorkInitial {
  _$SubmitWorkInitialImpl({required this.hasActivity});

  @override
  final bool hasActivity;

  @override
  String toString() {
    return 'QuestionnaireSubmitterEvent.submitWorkInitial(hasActivity: $hasActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitWorkInitialImpl &&
            (identical(other.hasActivity, hasActivity) ||
                other.hasActivity == hasActivity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasActivity);

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitWorkInitialImplCopyWith<_$SubmitWorkInitialImpl> get copyWith =>
      __$$SubmitWorkInitialImplCopyWithImpl<_$SubmitWorkInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireModel workData) submitWork,
    required TResult Function(bool hasActivity) submitWorkInitial,
    required TResult Function(QuestionnaireModel travelData) submitTravel,
    required TResult Function(QuestionnaireModel recreationData)
        submitRecreation,
    required TResult Function(SedentaryModel sedentaryData) submitSedentary,
    required TResult Function(Map<String, DifficultyLevel> lefsData) submitLEFS,
    required TResult Function() reset,
  }) {
    return submitWorkInitial(hasActivity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireModel workData)? submitWork,
    TResult? Function(bool hasActivity)? submitWorkInitial,
    TResult? Function(QuestionnaireModel travelData)? submitTravel,
    TResult? Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult? Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult? Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult? Function()? reset,
  }) {
    return submitWorkInitial?.call(hasActivity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireModel workData)? submitWork,
    TResult Function(bool hasActivity)? submitWorkInitial,
    TResult Function(QuestionnaireModel travelData)? submitTravel,
    TResult Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (submitWorkInitial != null) {
      return submitWorkInitial(hasActivity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitWork value) submitWork,
    required TResult Function(_SubmitWorkInitial value) submitWorkInitial,
    required TResult Function(_SubmitTravel value) submitTravel,
    required TResult Function(_SubmitRecreation value) submitRecreation,
    required TResult Function(_SubmitSedentary value) submitSedentary,
    required TResult Function(_SubmitLEFS value) submitLEFS,
    required TResult Function(_Reset value) reset,
  }) {
    return submitWorkInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitWork value)? submitWork,
    TResult? Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult? Function(_SubmitTravel value)? submitTravel,
    TResult? Function(_SubmitRecreation value)? submitRecreation,
    TResult? Function(_SubmitSedentary value)? submitSedentary,
    TResult? Function(_SubmitLEFS value)? submitLEFS,
    TResult? Function(_Reset value)? reset,
  }) {
    return submitWorkInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitWork value)? submitWork,
    TResult Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult Function(_SubmitTravel value)? submitTravel,
    TResult Function(_SubmitRecreation value)? submitRecreation,
    TResult Function(_SubmitSedentary value)? submitSedentary,
    TResult Function(_SubmitLEFS value)? submitLEFS,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (submitWorkInitial != null) {
      return submitWorkInitial(this);
    }
    return orElse();
  }
}

abstract class _SubmitWorkInitial implements QuestionnaireSubmitterEvent {
  factory _SubmitWorkInitial({required final bool hasActivity}) =
      _$SubmitWorkInitialImpl;

  bool get hasActivity;

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitWorkInitialImplCopyWith<_$SubmitWorkInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitTravelImplCopyWith<$Res> {
  factory _$$SubmitTravelImplCopyWith(
          _$SubmitTravelImpl value, $Res Function(_$SubmitTravelImpl) then) =
      __$$SubmitTravelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionnaireModel travelData});

  $QuestionnaireModelCopyWith<$Res> get travelData;
}

/// @nodoc
class __$$SubmitTravelImplCopyWithImpl<$Res>
    extends _$QuestionnaireSubmitterEventCopyWithImpl<$Res, _$SubmitTravelImpl>
    implements _$$SubmitTravelImplCopyWith<$Res> {
  __$$SubmitTravelImplCopyWithImpl(
      _$SubmitTravelImpl _value, $Res Function(_$SubmitTravelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? travelData = null,
  }) {
    return _then(_$SubmitTravelImpl(
      travelData: null == travelData
          ? _value.travelData
          : travelData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel,
    ));
  }

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireModelCopyWith<$Res> get travelData {
    return $QuestionnaireModelCopyWith<$Res>(_value.travelData, (value) {
      return _then(_value.copyWith(travelData: value));
    });
  }
}

/// @nodoc

class _$SubmitTravelImpl implements _SubmitTravel {
  _$SubmitTravelImpl({required this.travelData});

  @override
  final QuestionnaireModel travelData;

  @override
  String toString() {
    return 'QuestionnaireSubmitterEvent.submitTravel(travelData: $travelData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitTravelImpl &&
            (identical(other.travelData, travelData) ||
                other.travelData == travelData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, travelData);

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitTravelImplCopyWith<_$SubmitTravelImpl> get copyWith =>
      __$$SubmitTravelImplCopyWithImpl<_$SubmitTravelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireModel workData) submitWork,
    required TResult Function(bool hasActivity) submitWorkInitial,
    required TResult Function(QuestionnaireModel travelData) submitTravel,
    required TResult Function(QuestionnaireModel recreationData)
        submitRecreation,
    required TResult Function(SedentaryModel sedentaryData) submitSedentary,
    required TResult Function(Map<String, DifficultyLevel> lefsData) submitLEFS,
    required TResult Function() reset,
  }) {
    return submitTravel(travelData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireModel workData)? submitWork,
    TResult? Function(bool hasActivity)? submitWorkInitial,
    TResult? Function(QuestionnaireModel travelData)? submitTravel,
    TResult? Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult? Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult? Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult? Function()? reset,
  }) {
    return submitTravel?.call(travelData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireModel workData)? submitWork,
    TResult Function(bool hasActivity)? submitWorkInitial,
    TResult Function(QuestionnaireModel travelData)? submitTravel,
    TResult Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (submitTravel != null) {
      return submitTravel(travelData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitWork value) submitWork,
    required TResult Function(_SubmitWorkInitial value) submitWorkInitial,
    required TResult Function(_SubmitTravel value) submitTravel,
    required TResult Function(_SubmitRecreation value) submitRecreation,
    required TResult Function(_SubmitSedentary value) submitSedentary,
    required TResult Function(_SubmitLEFS value) submitLEFS,
    required TResult Function(_Reset value) reset,
  }) {
    return submitTravel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitWork value)? submitWork,
    TResult? Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult? Function(_SubmitTravel value)? submitTravel,
    TResult? Function(_SubmitRecreation value)? submitRecreation,
    TResult? Function(_SubmitSedentary value)? submitSedentary,
    TResult? Function(_SubmitLEFS value)? submitLEFS,
    TResult? Function(_Reset value)? reset,
  }) {
    return submitTravel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitWork value)? submitWork,
    TResult Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult Function(_SubmitTravel value)? submitTravel,
    TResult Function(_SubmitRecreation value)? submitRecreation,
    TResult Function(_SubmitSedentary value)? submitSedentary,
    TResult Function(_SubmitLEFS value)? submitLEFS,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (submitTravel != null) {
      return submitTravel(this);
    }
    return orElse();
  }
}

abstract class _SubmitTravel implements QuestionnaireSubmitterEvent {
  factory _SubmitTravel({required final QuestionnaireModel travelData}) =
      _$SubmitTravelImpl;

  QuestionnaireModel get travelData;

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitTravelImplCopyWith<_$SubmitTravelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitRecreationImplCopyWith<$Res> {
  factory _$$SubmitRecreationImplCopyWith(_$SubmitRecreationImpl value,
          $Res Function(_$SubmitRecreationImpl) then) =
      __$$SubmitRecreationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionnaireModel recreationData});

  $QuestionnaireModelCopyWith<$Res> get recreationData;
}

/// @nodoc
class __$$SubmitRecreationImplCopyWithImpl<$Res>
    extends _$QuestionnaireSubmitterEventCopyWithImpl<$Res,
        _$SubmitRecreationImpl>
    implements _$$SubmitRecreationImplCopyWith<$Res> {
  __$$SubmitRecreationImplCopyWithImpl(_$SubmitRecreationImpl _value,
      $Res Function(_$SubmitRecreationImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recreationData = null,
  }) {
    return _then(_$SubmitRecreationImpl(
      recreationData: null == recreationData
          ? _value.recreationData
          : recreationData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel,
    ));
  }

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireModelCopyWith<$Res> get recreationData {
    return $QuestionnaireModelCopyWith<$Res>(_value.recreationData, (value) {
      return _then(_value.copyWith(recreationData: value));
    });
  }
}

/// @nodoc

class _$SubmitRecreationImpl implements _SubmitRecreation {
  _$SubmitRecreationImpl({required this.recreationData});

  @override
  final QuestionnaireModel recreationData;

  @override
  String toString() {
    return 'QuestionnaireSubmitterEvent.submitRecreation(recreationData: $recreationData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitRecreationImpl &&
            (identical(other.recreationData, recreationData) ||
                other.recreationData == recreationData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recreationData);

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitRecreationImplCopyWith<_$SubmitRecreationImpl> get copyWith =>
      __$$SubmitRecreationImplCopyWithImpl<_$SubmitRecreationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireModel workData) submitWork,
    required TResult Function(bool hasActivity) submitWorkInitial,
    required TResult Function(QuestionnaireModel travelData) submitTravel,
    required TResult Function(QuestionnaireModel recreationData)
        submitRecreation,
    required TResult Function(SedentaryModel sedentaryData) submitSedentary,
    required TResult Function(Map<String, DifficultyLevel> lefsData) submitLEFS,
    required TResult Function() reset,
  }) {
    return submitRecreation(recreationData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireModel workData)? submitWork,
    TResult? Function(bool hasActivity)? submitWorkInitial,
    TResult? Function(QuestionnaireModel travelData)? submitTravel,
    TResult? Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult? Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult? Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult? Function()? reset,
  }) {
    return submitRecreation?.call(recreationData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireModel workData)? submitWork,
    TResult Function(bool hasActivity)? submitWorkInitial,
    TResult Function(QuestionnaireModel travelData)? submitTravel,
    TResult Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (submitRecreation != null) {
      return submitRecreation(recreationData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitWork value) submitWork,
    required TResult Function(_SubmitWorkInitial value) submitWorkInitial,
    required TResult Function(_SubmitTravel value) submitTravel,
    required TResult Function(_SubmitRecreation value) submitRecreation,
    required TResult Function(_SubmitSedentary value) submitSedentary,
    required TResult Function(_SubmitLEFS value) submitLEFS,
    required TResult Function(_Reset value) reset,
  }) {
    return submitRecreation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitWork value)? submitWork,
    TResult? Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult? Function(_SubmitTravel value)? submitTravel,
    TResult? Function(_SubmitRecreation value)? submitRecreation,
    TResult? Function(_SubmitSedentary value)? submitSedentary,
    TResult? Function(_SubmitLEFS value)? submitLEFS,
    TResult? Function(_Reset value)? reset,
  }) {
    return submitRecreation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitWork value)? submitWork,
    TResult Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult Function(_SubmitTravel value)? submitTravel,
    TResult Function(_SubmitRecreation value)? submitRecreation,
    TResult Function(_SubmitSedentary value)? submitSedentary,
    TResult Function(_SubmitLEFS value)? submitLEFS,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (submitRecreation != null) {
      return submitRecreation(this);
    }
    return orElse();
  }
}

abstract class _SubmitRecreation implements QuestionnaireSubmitterEvent {
  factory _SubmitRecreation(
          {required final QuestionnaireModel recreationData}) =
      _$SubmitRecreationImpl;

  QuestionnaireModel get recreationData;

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitRecreationImplCopyWith<_$SubmitRecreationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitSedentaryImplCopyWith<$Res> {
  factory _$$SubmitSedentaryImplCopyWith(_$SubmitSedentaryImpl value,
          $Res Function(_$SubmitSedentaryImpl) then) =
      __$$SubmitSedentaryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SedentaryModel sedentaryData});

  $SedentaryModelCopyWith<$Res> get sedentaryData;
}

/// @nodoc
class __$$SubmitSedentaryImplCopyWithImpl<$Res>
    extends _$QuestionnaireSubmitterEventCopyWithImpl<$Res,
        _$SubmitSedentaryImpl> implements _$$SubmitSedentaryImplCopyWith<$Res> {
  __$$SubmitSedentaryImplCopyWithImpl(
      _$SubmitSedentaryImpl _value, $Res Function(_$SubmitSedentaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sedentaryData = null,
  }) {
    return _then(_$SubmitSedentaryImpl(
      sedentaryData: null == sedentaryData
          ? _value.sedentaryData
          : sedentaryData // ignore: cast_nullable_to_non_nullable
              as SedentaryModel,
    ));
  }

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SedentaryModelCopyWith<$Res> get sedentaryData {
    return $SedentaryModelCopyWith<$Res>(_value.sedentaryData, (value) {
      return _then(_value.copyWith(sedentaryData: value));
    });
  }
}

/// @nodoc

class _$SubmitSedentaryImpl implements _SubmitSedentary {
  _$SubmitSedentaryImpl({required this.sedentaryData});

  @override
  final SedentaryModel sedentaryData;

  @override
  String toString() {
    return 'QuestionnaireSubmitterEvent.submitSedentary(sedentaryData: $sedentaryData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitSedentaryImpl &&
            (identical(other.sedentaryData, sedentaryData) ||
                other.sedentaryData == sedentaryData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sedentaryData);

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitSedentaryImplCopyWith<_$SubmitSedentaryImpl> get copyWith =>
      __$$SubmitSedentaryImplCopyWithImpl<_$SubmitSedentaryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireModel workData) submitWork,
    required TResult Function(bool hasActivity) submitWorkInitial,
    required TResult Function(QuestionnaireModel travelData) submitTravel,
    required TResult Function(QuestionnaireModel recreationData)
        submitRecreation,
    required TResult Function(SedentaryModel sedentaryData) submitSedentary,
    required TResult Function(Map<String, DifficultyLevel> lefsData) submitLEFS,
    required TResult Function() reset,
  }) {
    return submitSedentary(sedentaryData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireModel workData)? submitWork,
    TResult? Function(bool hasActivity)? submitWorkInitial,
    TResult? Function(QuestionnaireModel travelData)? submitTravel,
    TResult? Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult? Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult? Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult? Function()? reset,
  }) {
    return submitSedentary?.call(sedentaryData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireModel workData)? submitWork,
    TResult Function(bool hasActivity)? submitWorkInitial,
    TResult Function(QuestionnaireModel travelData)? submitTravel,
    TResult Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (submitSedentary != null) {
      return submitSedentary(sedentaryData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitWork value) submitWork,
    required TResult Function(_SubmitWorkInitial value) submitWorkInitial,
    required TResult Function(_SubmitTravel value) submitTravel,
    required TResult Function(_SubmitRecreation value) submitRecreation,
    required TResult Function(_SubmitSedentary value) submitSedentary,
    required TResult Function(_SubmitLEFS value) submitLEFS,
    required TResult Function(_Reset value) reset,
  }) {
    return submitSedentary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitWork value)? submitWork,
    TResult? Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult? Function(_SubmitTravel value)? submitTravel,
    TResult? Function(_SubmitRecreation value)? submitRecreation,
    TResult? Function(_SubmitSedentary value)? submitSedentary,
    TResult? Function(_SubmitLEFS value)? submitLEFS,
    TResult? Function(_Reset value)? reset,
  }) {
    return submitSedentary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitWork value)? submitWork,
    TResult Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult Function(_SubmitTravel value)? submitTravel,
    TResult Function(_SubmitRecreation value)? submitRecreation,
    TResult Function(_SubmitSedentary value)? submitSedentary,
    TResult Function(_SubmitLEFS value)? submitLEFS,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (submitSedentary != null) {
      return submitSedentary(this);
    }
    return orElse();
  }
}

abstract class _SubmitSedentary implements QuestionnaireSubmitterEvent {
  factory _SubmitSedentary({required final SedentaryModel sedentaryData}) =
      _$SubmitSedentaryImpl;

  SedentaryModel get sedentaryData;

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitSedentaryImplCopyWith<_$SubmitSedentaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitLEFSImplCopyWith<$Res> {
  factory _$$SubmitLEFSImplCopyWith(
          _$SubmitLEFSImpl value, $Res Function(_$SubmitLEFSImpl) then) =
      __$$SubmitLEFSImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, DifficultyLevel> lefsData});
}

/// @nodoc
class __$$SubmitLEFSImplCopyWithImpl<$Res>
    extends _$QuestionnaireSubmitterEventCopyWithImpl<$Res, _$SubmitLEFSImpl>
    implements _$$SubmitLEFSImplCopyWith<$Res> {
  __$$SubmitLEFSImplCopyWithImpl(
      _$SubmitLEFSImpl _value, $Res Function(_$SubmitLEFSImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lefsData = null,
  }) {
    return _then(_$SubmitLEFSImpl(
      lefsData: null == lefsData
          ? _value._lefsData
          : lefsData // ignore: cast_nullable_to_non_nullable
              as Map<String, DifficultyLevel>,
    ));
  }
}

/// @nodoc

class _$SubmitLEFSImpl implements _SubmitLEFS {
  _$SubmitLEFSImpl({required final Map<String, DifficultyLevel> lefsData})
      : _lefsData = lefsData;

  final Map<String, DifficultyLevel> _lefsData;
  @override
  Map<String, DifficultyLevel> get lefsData {
    if (_lefsData is EqualUnmodifiableMapView) return _lefsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_lefsData);
  }

  @override
  String toString() {
    return 'QuestionnaireSubmitterEvent.submitLEFS(lefsData: $lefsData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitLEFSImpl &&
            const DeepCollectionEquality().equals(other._lefsData, _lefsData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_lefsData));

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitLEFSImplCopyWith<_$SubmitLEFSImpl> get copyWith =>
      __$$SubmitLEFSImplCopyWithImpl<_$SubmitLEFSImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireModel workData) submitWork,
    required TResult Function(bool hasActivity) submitWorkInitial,
    required TResult Function(QuestionnaireModel travelData) submitTravel,
    required TResult Function(QuestionnaireModel recreationData)
        submitRecreation,
    required TResult Function(SedentaryModel sedentaryData) submitSedentary,
    required TResult Function(Map<String, DifficultyLevel> lefsData) submitLEFS,
    required TResult Function() reset,
  }) {
    return submitLEFS(lefsData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireModel workData)? submitWork,
    TResult? Function(bool hasActivity)? submitWorkInitial,
    TResult? Function(QuestionnaireModel travelData)? submitTravel,
    TResult? Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult? Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult? Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult? Function()? reset,
  }) {
    return submitLEFS?.call(lefsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireModel workData)? submitWork,
    TResult Function(bool hasActivity)? submitWorkInitial,
    TResult Function(QuestionnaireModel travelData)? submitTravel,
    TResult Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (submitLEFS != null) {
      return submitLEFS(lefsData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitWork value) submitWork,
    required TResult Function(_SubmitWorkInitial value) submitWorkInitial,
    required TResult Function(_SubmitTravel value) submitTravel,
    required TResult Function(_SubmitRecreation value) submitRecreation,
    required TResult Function(_SubmitSedentary value) submitSedentary,
    required TResult Function(_SubmitLEFS value) submitLEFS,
    required TResult Function(_Reset value) reset,
  }) {
    return submitLEFS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitWork value)? submitWork,
    TResult? Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult? Function(_SubmitTravel value)? submitTravel,
    TResult? Function(_SubmitRecreation value)? submitRecreation,
    TResult? Function(_SubmitSedentary value)? submitSedentary,
    TResult? Function(_SubmitLEFS value)? submitLEFS,
    TResult? Function(_Reset value)? reset,
  }) {
    return submitLEFS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitWork value)? submitWork,
    TResult Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult Function(_SubmitTravel value)? submitTravel,
    TResult Function(_SubmitRecreation value)? submitRecreation,
    TResult Function(_SubmitSedentary value)? submitSedentary,
    TResult Function(_SubmitLEFS value)? submitLEFS,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (submitLEFS != null) {
      return submitLEFS(this);
    }
    return orElse();
  }
}

abstract class _SubmitLEFS implements QuestionnaireSubmitterEvent {
  factory _SubmitLEFS({required final Map<String, DifficultyLevel> lefsData}) =
      _$SubmitLEFSImpl;

  Map<String, DifficultyLevel> get lefsData;

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitLEFSImplCopyWith<_$SubmitLEFSImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$QuestionnaireSubmitterEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireSubmitterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetImpl implements _Reset {
  _$ResetImpl();

  @override
  String toString() {
    return 'QuestionnaireSubmitterEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireModel workData) submitWork,
    required TResult Function(bool hasActivity) submitWorkInitial,
    required TResult Function(QuestionnaireModel travelData) submitTravel,
    required TResult Function(QuestionnaireModel recreationData)
        submitRecreation,
    required TResult Function(SedentaryModel sedentaryData) submitSedentary,
    required TResult Function(Map<String, DifficultyLevel> lefsData) submitLEFS,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireModel workData)? submitWork,
    TResult? Function(bool hasActivity)? submitWorkInitial,
    TResult? Function(QuestionnaireModel travelData)? submitTravel,
    TResult? Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult? Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult? Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireModel workData)? submitWork,
    TResult Function(bool hasActivity)? submitWorkInitial,
    TResult Function(QuestionnaireModel travelData)? submitTravel,
    TResult Function(QuestionnaireModel recreationData)? submitRecreation,
    TResult Function(SedentaryModel sedentaryData)? submitSedentary,
    TResult Function(Map<String, DifficultyLevel> lefsData)? submitLEFS,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitWork value) submitWork,
    required TResult Function(_SubmitWorkInitial value) submitWorkInitial,
    required TResult Function(_SubmitTravel value) submitTravel,
    required TResult Function(_SubmitRecreation value) submitRecreation,
    required TResult Function(_SubmitSedentary value) submitSedentary,
    required TResult Function(_SubmitLEFS value) submitLEFS,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubmitWork value)? submitWork,
    TResult? Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult? Function(_SubmitTravel value)? submitTravel,
    TResult? Function(_SubmitRecreation value)? submitRecreation,
    TResult? Function(_SubmitSedentary value)? submitSedentary,
    TResult? Function(_SubmitLEFS value)? submitLEFS,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitWork value)? submitWork,
    TResult Function(_SubmitWorkInitial value)? submitWorkInitial,
    TResult Function(_SubmitTravel value)? submitTravel,
    TResult Function(_SubmitRecreation value)? submitRecreation,
    TResult Function(_SubmitSedentary value)? submitSedentary,
    TResult Function(_SubmitLEFS value)? submitLEFS,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements QuestionnaireSubmitterEvent {
  factory _Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$QuestionnaireSubmitterState {
  QuestionnaireSubmitterStatus get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuestionnaireSubmitterStatus status, String? errorMessage)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            QuestionnaireSubmitterStatus status, String? errorMessage)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireSubmitterStatus status, String? errorMessage)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireSubmitterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireSubmitterStateCopyWith<QuestionnaireSubmitterState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireSubmitterStateCopyWith<$Res> {
  factory $QuestionnaireSubmitterStateCopyWith(
          QuestionnaireSubmitterState value,
          $Res Function(QuestionnaireSubmitterState) then) =
      _$QuestionnaireSubmitterStateCopyWithImpl<$Res,
          QuestionnaireSubmitterState>;
  @useResult
  $Res call({QuestionnaireSubmitterStatus status, String? errorMessage});
}

/// @nodoc
class _$QuestionnaireSubmitterStateCopyWithImpl<$Res,
        $Val extends QuestionnaireSubmitterState>
    implements $QuestionnaireSubmitterStateCopyWith<$Res> {
  _$QuestionnaireSubmitterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireSubmitterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionnaireSubmitterStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $QuestionnaireSubmitterStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuestionnaireSubmitterStatus status, String? errorMessage});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QuestionnaireSubmitterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireSubmitterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$InitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionnaireSubmitterStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  _$InitialImpl(
      {this.status = QuestionnaireSubmitterStatus.initial, this.errorMessage});

  @override
  @JsonKey()
  final QuestionnaireSubmitterStatus status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'QuestionnaireSubmitterState.initial(status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage);

  /// Create a copy of QuestionnaireSubmitterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuestionnaireSubmitterStatus status, String? errorMessage)
        initial,
  }) {
    return initial(status, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            QuestionnaireSubmitterStatus status, String? errorMessage)?
        initial,
  }) {
    return initial?.call(status, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireSubmitterStatus status, String? errorMessage)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuestionnaireSubmitterState {
  factory _Initial(
      {final QuestionnaireSubmitterStatus status,
      final String? errorMessage}) = _$InitialImpl;

  @override
  QuestionnaireSubmitterStatus get status;
  @override
  String? get errorMessage;

  /// Create a copy of QuestionnaireSubmitterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
