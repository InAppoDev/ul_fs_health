// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questionnaire_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionnaireEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireFillStatus fillStatus) onSubmit,
    required TResult Function(
            bool hasActivity, QuestionnaireFillStatus fillStatus)
        selectActivity,
    required TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)
        selectDaysInWeek,
    required TResult Function(int hours, QuestionnaireFillStatus fillStatus)
        selectHour,
    required TResult Function(int minutes, QuestionnaireFillStatus fillStatus)
        selectMinutes,
    required TResult Function(QuestionnaireFillStatus fillStatus)
        validateScreen,
    required TResult Function(Map<String, DifficultyLevel> initialData)
        lefsInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult? Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult? Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult? Function(int hours, QuestionnaireFillStatus fillStatus)?
        selectHour,
    TResult? Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult? Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult? Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult Function(int hours, QuestionnaireFillStatus fillStatus)? selectHour,
    TResult Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionnaireSubmit value) onSubmit,
    required TResult Function(_SelectActivity value) selectActivity,
    required TResult Function(_SelectDaysInWeek value) selectDaysInWeek,
    required TResult Function(_SelectHours value) selectHour,
    required TResult Function(_SelectMinutes value) selectMinutes,
    required TResult Function(_ValidateScreen value) validateScreen,
    required TResult Function(_LEFSInitial value) lefsInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuestionnaireSubmit value)? onSubmit,
    TResult? Function(_SelectActivity value)? selectActivity,
    TResult? Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult? Function(_SelectHours value)? selectHour,
    TResult? Function(_SelectMinutes value)? selectMinutes,
    TResult? Function(_ValidateScreen value)? validateScreen,
    TResult? Function(_LEFSInitial value)? lefsInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionnaireSubmit value)? onSubmit,
    TResult Function(_SelectActivity value)? selectActivity,
    TResult Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult Function(_SelectHours value)? selectHour,
    TResult Function(_SelectMinutes value)? selectMinutes,
    TResult Function(_ValidateScreen value)? validateScreen,
    TResult Function(_LEFSInitial value)? lefsInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireEventCopyWith<$Res> {
  factory $QuestionnaireEventCopyWith(
          QuestionnaireEvent value, $Res Function(QuestionnaireEvent) then) =
      _$QuestionnaireEventCopyWithImpl<$Res, QuestionnaireEvent>;
}

/// @nodoc
class _$QuestionnaireEventCopyWithImpl<$Res, $Val extends QuestionnaireEvent>
    implements $QuestionnaireEventCopyWith<$Res> {
  _$QuestionnaireEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$QuestionnaireSubmitImplCopyWith<$Res> {
  factory _$$QuestionnaireSubmitImplCopyWith(_$QuestionnaireSubmitImpl value,
          $Res Function(_$QuestionnaireSubmitImpl) then) =
      __$$QuestionnaireSubmitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionnaireFillStatus fillStatus});
}

/// @nodoc
class __$$QuestionnaireSubmitImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$QuestionnaireSubmitImpl>
    implements _$$QuestionnaireSubmitImplCopyWith<$Res> {
  __$$QuestionnaireSubmitImplCopyWithImpl(_$QuestionnaireSubmitImpl _value,
      $Res Function(_$QuestionnaireSubmitImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fillStatus = null,
  }) {
    return _then(_$QuestionnaireSubmitImpl(
      null == fillStatus
          ? _value.fillStatus
          : fillStatus // ignore: cast_nullable_to_non_nullable
              as QuestionnaireFillStatus,
    ));
  }
}

/// @nodoc

class _$QuestionnaireSubmitImpl implements _QuestionnaireSubmit {
  _$QuestionnaireSubmitImpl(this.fillStatus);

  @override
  final QuestionnaireFillStatus fillStatus;

  @override
  String toString() {
    return 'QuestionnaireEvent.onSubmit(fillStatus: $fillStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireSubmitImpl &&
            (identical(other.fillStatus, fillStatus) ||
                other.fillStatus == fillStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fillStatus);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireSubmitImplCopyWith<_$QuestionnaireSubmitImpl> get copyWith =>
      __$$QuestionnaireSubmitImplCopyWithImpl<_$QuestionnaireSubmitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireFillStatus fillStatus) onSubmit,
    required TResult Function(
            bool hasActivity, QuestionnaireFillStatus fillStatus)
        selectActivity,
    required TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)
        selectDaysInWeek,
    required TResult Function(int hours, QuestionnaireFillStatus fillStatus)
        selectHour,
    required TResult Function(int minutes, QuestionnaireFillStatus fillStatus)
        selectMinutes,
    required TResult Function(QuestionnaireFillStatus fillStatus)
        validateScreen,
    required TResult Function(Map<String, DifficultyLevel> initialData)
        lefsInitial,
  }) {
    return onSubmit(fillStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult? Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult? Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult? Function(int hours, QuestionnaireFillStatus fillStatus)?
        selectHour,
    TResult? Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult? Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult? Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
  }) {
    return onSubmit?.call(fillStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult Function(int hours, QuestionnaireFillStatus fillStatus)? selectHour,
    TResult Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit(fillStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionnaireSubmit value) onSubmit,
    required TResult Function(_SelectActivity value) selectActivity,
    required TResult Function(_SelectDaysInWeek value) selectDaysInWeek,
    required TResult Function(_SelectHours value) selectHour,
    required TResult Function(_SelectMinutes value) selectMinutes,
    required TResult Function(_ValidateScreen value) validateScreen,
    required TResult Function(_LEFSInitial value) lefsInitial,
  }) {
    return onSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuestionnaireSubmit value)? onSubmit,
    TResult? Function(_SelectActivity value)? selectActivity,
    TResult? Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult? Function(_SelectHours value)? selectHour,
    TResult? Function(_SelectMinutes value)? selectMinutes,
    TResult? Function(_ValidateScreen value)? validateScreen,
    TResult? Function(_LEFSInitial value)? lefsInitial,
  }) {
    return onSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionnaireSubmit value)? onSubmit,
    TResult Function(_SelectActivity value)? selectActivity,
    TResult Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult Function(_SelectHours value)? selectHour,
    TResult Function(_SelectMinutes value)? selectMinutes,
    TResult Function(_ValidateScreen value)? validateScreen,
    TResult Function(_LEFSInitial value)? lefsInitial,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit(this);
    }
    return orElse();
  }
}

abstract class _QuestionnaireSubmit implements QuestionnaireEvent {
  factory _QuestionnaireSubmit(final QuestionnaireFillStatus fillStatus) =
      _$QuestionnaireSubmitImpl;

  QuestionnaireFillStatus get fillStatus;

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireSubmitImplCopyWith<_$QuestionnaireSubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectActivityImplCopyWith<$Res> {
  factory _$$SelectActivityImplCopyWith(_$SelectActivityImpl value,
          $Res Function(_$SelectActivityImpl) then) =
      __$$SelectActivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasActivity, QuestionnaireFillStatus fillStatus});
}

/// @nodoc
class __$$SelectActivityImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$SelectActivityImpl>
    implements _$$SelectActivityImplCopyWith<$Res> {
  __$$SelectActivityImplCopyWithImpl(
      _$SelectActivityImpl _value, $Res Function(_$SelectActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasActivity = null,
    Object? fillStatus = null,
  }) {
    return _then(_$SelectActivityImpl(
      hasActivity: null == hasActivity
          ? _value.hasActivity
          : hasActivity // ignore: cast_nullable_to_non_nullable
              as bool,
      fillStatus: null == fillStatus
          ? _value.fillStatus
          : fillStatus // ignore: cast_nullable_to_non_nullable
              as QuestionnaireFillStatus,
    ));
  }
}

/// @nodoc

class _$SelectActivityImpl implements _SelectActivity {
  _$SelectActivityImpl({required this.hasActivity, required this.fillStatus});

  @override
  final bool hasActivity;
  @override
  final QuestionnaireFillStatus fillStatus;

  @override
  String toString() {
    return 'QuestionnaireEvent.selectActivity(hasActivity: $hasActivity, fillStatus: $fillStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectActivityImpl &&
            (identical(other.hasActivity, hasActivity) ||
                other.hasActivity == hasActivity) &&
            (identical(other.fillStatus, fillStatus) ||
                other.fillStatus == fillStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasActivity, fillStatus);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectActivityImplCopyWith<_$SelectActivityImpl> get copyWith =>
      __$$SelectActivityImplCopyWithImpl<_$SelectActivityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireFillStatus fillStatus) onSubmit,
    required TResult Function(
            bool hasActivity, QuestionnaireFillStatus fillStatus)
        selectActivity,
    required TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)
        selectDaysInWeek,
    required TResult Function(int hours, QuestionnaireFillStatus fillStatus)
        selectHour,
    required TResult Function(int minutes, QuestionnaireFillStatus fillStatus)
        selectMinutes,
    required TResult Function(QuestionnaireFillStatus fillStatus)
        validateScreen,
    required TResult Function(Map<String, DifficultyLevel> initialData)
        lefsInitial,
  }) {
    return selectActivity(hasActivity, fillStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult? Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult? Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult? Function(int hours, QuestionnaireFillStatus fillStatus)?
        selectHour,
    TResult? Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult? Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult? Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
  }) {
    return selectActivity?.call(hasActivity, fillStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult Function(int hours, QuestionnaireFillStatus fillStatus)? selectHour,
    TResult Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
    required TResult orElse(),
  }) {
    if (selectActivity != null) {
      return selectActivity(hasActivity, fillStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionnaireSubmit value) onSubmit,
    required TResult Function(_SelectActivity value) selectActivity,
    required TResult Function(_SelectDaysInWeek value) selectDaysInWeek,
    required TResult Function(_SelectHours value) selectHour,
    required TResult Function(_SelectMinutes value) selectMinutes,
    required TResult Function(_ValidateScreen value) validateScreen,
    required TResult Function(_LEFSInitial value) lefsInitial,
  }) {
    return selectActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuestionnaireSubmit value)? onSubmit,
    TResult? Function(_SelectActivity value)? selectActivity,
    TResult? Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult? Function(_SelectHours value)? selectHour,
    TResult? Function(_SelectMinutes value)? selectMinutes,
    TResult? Function(_ValidateScreen value)? validateScreen,
    TResult? Function(_LEFSInitial value)? lefsInitial,
  }) {
    return selectActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionnaireSubmit value)? onSubmit,
    TResult Function(_SelectActivity value)? selectActivity,
    TResult Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult Function(_SelectHours value)? selectHour,
    TResult Function(_SelectMinutes value)? selectMinutes,
    TResult Function(_ValidateScreen value)? validateScreen,
    TResult Function(_LEFSInitial value)? lefsInitial,
    required TResult orElse(),
  }) {
    if (selectActivity != null) {
      return selectActivity(this);
    }
    return orElse();
  }
}

abstract class _SelectActivity implements QuestionnaireEvent {
  factory _SelectActivity(
          {required final bool hasActivity,
          required final QuestionnaireFillStatus fillStatus}) =
      _$SelectActivityImpl;

  bool get hasActivity;
  QuestionnaireFillStatus get fillStatus;

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectActivityImplCopyWith<_$SelectActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectDaysInWeekImplCopyWith<$Res> {
  factory _$$SelectDaysInWeekImplCopyWith(_$SelectDaysInWeekImpl value,
          $Res Function(_$SelectDaysInWeekImpl) then) =
      __$$SelectDaysInWeekImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int? daysInWeek,
      bool shouldValidate,
      QuestionnaireFillStatus fillStatus});
}

/// @nodoc
class __$$SelectDaysInWeekImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$SelectDaysInWeekImpl>
    implements _$$SelectDaysInWeekImplCopyWith<$Res> {
  __$$SelectDaysInWeekImplCopyWithImpl(_$SelectDaysInWeekImpl _value,
      $Res Function(_$SelectDaysInWeekImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daysInWeek = freezed,
    Object? shouldValidate = null,
    Object? fillStatus = null,
  }) {
    return _then(_$SelectDaysInWeekImpl(
      daysInWeek: freezed == daysInWeek
          ? _value.daysInWeek
          : daysInWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      shouldValidate: null == shouldValidate
          ? _value.shouldValidate
          : shouldValidate // ignore: cast_nullable_to_non_nullable
              as bool,
      fillStatus: null == fillStatus
          ? _value.fillStatus
          : fillStatus // ignore: cast_nullable_to_non_nullable
              as QuestionnaireFillStatus,
    ));
  }
}

/// @nodoc

class _$SelectDaysInWeekImpl implements _SelectDaysInWeek {
  _$SelectDaysInWeekImpl(
      {this.daysInWeek,
      required this.shouldValidate,
      required this.fillStatus});

  @override
  final int? daysInWeek;
  @override
  final bool shouldValidate;
  @override
  final QuestionnaireFillStatus fillStatus;

  @override
  String toString() {
    return 'QuestionnaireEvent.selectDaysInWeek(daysInWeek: $daysInWeek, shouldValidate: $shouldValidate, fillStatus: $fillStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDaysInWeekImpl &&
            (identical(other.daysInWeek, daysInWeek) ||
                other.daysInWeek == daysInWeek) &&
            (identical(other.shouldValidate, shouldValidate) ||
                other.shouldValidate == shouldValidate) &&
            (identical(other.fillStatus, fillStatus) ||
                other.fillStatus == fillStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, daysInWeek, shouldValidate, fillStatus);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDaysInWeekImplCopyWith<_$SelectDaysInWeekImpl> get copyWith =>
      __$$SelectDaysInWeekImplCopyWithImpl<_$SelectDaysInWeekImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireFillStatus fillStatus) onSubmit,
    required TResult Function(
            bool hasActivity, QuestionnaireFillStatus fillStatus)
        selectActivity,
    required TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)
        selectDaysInWeek,
    required TResult Function(int hours, QuestionnaireFillStatus fillStatus)
        selectHour,
    required TResult Function(int minutes, QuestionnaireFillStatus fillStatus)
        selectMinutes,
    required TResult Function(QuestionnaireFillStatus fillStatus)
        validateScreen,
    required TResult Function(Map<String, DifficultyLevel> initialData)
        lefsInitial,
  }) {
    return selectDaysInWeek(daysInWeek, shouldValidate, fillStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult? Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult? Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult? Function(int hours, QuestionnaireFillStatus fillStatus)?
        selectHour,
    TResult? Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult? Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult? Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
  }) {
    return selectDaysInWeek?.call(daysInWeek, shouldValidate, fillStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult Function(int hours, QuestionnaireFillStatus fillStatus)? selectHour,
    TResult Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
    required TResult orElse(),
  }) {
    if (selectDaysInWeek != null) {
      return selectDaysInWeek(daysInWeek, shouldValidate, fillStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionnaireSubmit value) onSubmit,
    required TResult Function(_SelectActivity value) selectActivity,
    required TResult Function(_SelectDaysInWeek value) selectDaysInWeek,
    required TResult Function(_SelectHours value) selectHour,
    required TResult Function(_SelectMinutes value) selectMinutes,
    required TResult Function(_ValidateScreen value) validateScreen,
    required TResult Function(_LEFSInitial value) lefsInitial,
  }) {
    return selectDaysInWeek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuestionnaireSubmit value)? onSubmit,
    TResult? Function(_SelectActivity value)? selectActivity,
    TResult? Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult? Function(_SelectHours value)? selectHour,
    TResult? Function(_SelectMinutes value)? selectMinutes,
    TResult? Function(_ValidateScreen value)? validateScreen,
    TResult? Function(_LEFSInitial value)? lefsInitial,
  }) {
    return selectDaysInWeek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionnaireSubmit value)? onSubmit,
    TResult Function(_SelectActivity value)? selectActivity,
    TResult Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult Function(_SelectHours value)? selectHour,
    TResult Function(_SelectMinutes value)? selectMinutes,
    TResult Function(_ValidateScreen value)? validateScreen,
    TResult Function(_LEFSInitial value)? lefsInitial,
    required TResult orElse(),
  }) {
    if (selectDaysInWeek != null) {
      return selectDaysInWeek(this);
    }
    return orElse();
  }
}

abstract class _SelectDaysInWeek implements QuestionnaireEvent {
  factory _SelectDaysInWeek(
          {final int? daysInWeek,
          required final bool shouldValidate,
          required final QuestionnaireFillStatus fillStatus}) =
      _$SelectDaysInWeekImpl;

  int? get daysInWeek;
  bool get shouldValidate;
  QuestionnaireFillStatus get fillStatus;

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectDaysInWeekImplCopyWith<_$SelectDaysInWeekImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectHoursImplCopyWith<$Res> {
  factory _$$SelectHoursImplCopyWith(
          _$SelectHoursImpl value, $Res Function(_$SelectHoursImpl) then) =
      __$$SelectHoursImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int hours, QuestionnaireFillStatus fillStatus});
}

/// @nodoc
class __$$SelectHoursImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$SelectHoursImpl>
    implements _$$SelectHoursImplCopyWith<$Res> {
  __$$SelectHoursImplCopyWithImpl(
      _$SelectHoursImpl _value, $Res Function(_$SelectHoursImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hours = null,
    Object? fillStatus = null,
  }) {
    return _then(_$SelectHoursImpl(
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      fillStatus: null == fillStatus
          ? _value.fillStatus
          : fillStatus // ignore: cast_nullable_to_non_nullable
              as QuestionnaireFillStatus,
    ));
  }
}

/// @nodoc

class _$SelectHoursImpl implements _SelectHours {
  _$SelectHoursImpl({required this.hours, required this.fillStatus});

  @override
  final int hours;
  @override
  final QuestionnaireFillStatus fillStatus;

  @override
  String toString() {
    return 'QuestionnaireEvent.selectHour(hours: $hours, fillStatus: $fillStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectHoursImpl &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.fillStatus, fillStatus) ||
                other.fillStatus == fillStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hours, fillStatus);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectHoursImplCopyWith<_$SelectHoursImpl> get copyWith =>
      __$$SelectHoursImplCopyWithImpl<_$SelectHoursImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireFillStatus fillStatus) onSubmit,
    required TResult Function(
            bool hasActivity, QuestionnaireFillStatus fillStatus)
        selectActivity,
    required TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)
        selectDaysInWeek,
    required TResult Function(int hours, QuestionnaireFillStatus fillStatus)
        selectHour,
    required TResult Function(int minutes, QuestionnaireFillStatus fillStatus)
        selectMinutes,
    required TResult Function(QuestionnaireFillStatus fillStatus)
        validateScreen,
    required TResult Function(Map<String, DifficultyLevel> initialData)
        lefsInitial,
  }) {
    return selectHour(hours, fillStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult? Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult? Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult? Function(int hours, QuestionnaireFillStatus fillStatus)?
        selectHour,
    TResult? Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult? Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult? Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
  }) {
    return selectHour?.call(hours, fillStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult Function(int hours, QuestionnaireFillStatus fillStatus)? selectHour,
    TResult Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
    required TResult orElse(),
  }) {
    if (selectHour != null) {
      return selectHour(hours, fillStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionnaireSubmit value) onSubmit,
    required TResult Function(_SelectActivity value) selectActivity,
    required TResult Function(_SelectDaysInWeek value) selectDaysInWeek,
    required TResult Function(_SelectHours value) selectHour,
    required TResult Function(_SelectMinutes value) selectMinutes,
    required TResult Function(_ValidateScreen value) validateScreen,
    required TResult Function(_LEFSInitial value) lefsInitial,
  }) {
    return selectHour(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuestionnaireSubmit value)? onSubmit,
    TResult? Function(_SelectActivity value)? selectActivity,
    TResult? Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult? Function(_SelectHours value)? selectHour,
    TResult? Function(_SelectMinutes value)? selectMinutes,
    TResult? Function(_ValidateScreen value)? validateScreen,
    TResult? Function(_LEFSInitial value)? lefsInitial,
  }) {
    return selectHour?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionnaireSubmit value)? onSubmit,
    TResult Function(_SelectActivity value)? selectActivity,
    TResult Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult Function(_SelectHours value)? selectHour,
    TResult Function(_SelectMinutes value)? selectMinutes,
    TResult Function(_ValidateScreen value)? validateScreen,
    TResult Function(_LEFSInitial value)? lefsInitial,
    required TResult orElse(),
  }) {
    if (selectHour != null) {
      return selectHour(this);
    }
    return orElse();
  }
}

abstract class _SelectHours implements QuestionnaireEvent {
  factory _SelectHours(
      {required final int hours,
      required final QuestionnaireFillStatus fillStatus}) = _$SelectHoursImpl;

  int get hours;
  QuestionnaireFillStatus get fillStatus;

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectHoursImplCopyWith<_$SelectHoursImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectMinutesImplCopyWith<$Res> {
  factory _$$SelectMinutesImplCopyWith(
          _$SelectMinutesImpl value, $Res Function(_$SelectMinutesImpl) then) =
      __$$SelectMinutesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int minutes, QuestionnaireFillStatus fillStatus});
}

/// @nodoc
class __$$SelectMinutesImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$SelectMinutesImpl>
    implements _$$SelectMinutesImplCopyWith<$Res> {
  __$$SelectMinutesImplCopyWithImpl(
      _$SelectMinutesImpl _value, $Res Function(_$SelectMinutesImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minutes = null,
    Object? fillStatus = null,
  }) {
    return _then(_$SelectMinutesImpl(
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      fillStatus: null == fillStatus
          ? _value.fillStatus
          : fillStatus // ignore: cast_nullable_to_non_nullable
              as QuestionnaireFillStatus,
    ));
  }
}

/// @nodoc

class _$SelectMinutesImpl implements _SelectMinutes {
  _$SelectMinutesImpl({required this.minutes, required this.fillStatus});

  @override
  final int minutes;
  @override
  final QuestionnaireFillStatus fillStatus;

  @override
  String toString() {
    return 'QuestionnaireEvent.selectMinutes(minutes: $minutes, fillStatus: $fillStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectMinutesImpl &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.fillStatus, fillStatus) ||
                other.fillStatus == fillStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minutes, fillStatus);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectMinutesImplCopyWith<_$SelectMinutesImpl> get copyWith =>
      __$$SelectMinutesImplCopyWithImpl<_$SelectMinutesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireFillStatus fillStatus) onSubmit,
    required TResult Function(
            bool hasActivity, QuestionnaireFillStatus fillStatus)
        selectActivity,
    required TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)
        selectDaysInWeek,
    required TResult Function(int hours, QuestionnaireFillStatus fillStatus)
        selectHour,
    required TResult Function(int minutes, QuestionnaireFillStatus fillStatus)
        selectMinutes,
    required TResult Function(QuestionnaireFillStatus fillStatus)
        validateScreen,
    required TResult Function(Map<String, DifficultyLevel> initialData)
        lefsInitial,
  }) {
    return selectMinutes(minutes, fillStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult? Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult? Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult? Function(int hours, QuestionnaireFillStatus fillStatus)?
        selectHour,
    TResult? Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult? Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult? Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
  }) {
    return selectMinutes?.call(minutes, fillStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult Function(int hours, QuestionnaireFillStatus fillStatus)? selectHour,
    TResult Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
    required TResult orElse(),
  }) {
    if (selectMinutes != null) {
      return selectMinutes(minutes, fillStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionnaireSubmit value) onSubmit,
    required TResult Function(_SelectActivity value) selectActivity,
    required TResult Function(_SelectDaysInWeek value) selectDaysInWeek,
    required TResult Function(_SelectHours value) selectHour,
    required TResult Function(_SelectMinutes value) selectMinutes,
    required TResult Function(_ValidateScreen value) validateScreen,
    required TResult Function(_LEFSInitial value) lefsInitial,
  }) {
    return selectMinutes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuestionnaireSubmit value)? onSubmit,
    TResult? Function(_SelectActivity value)? selectActivity,
    TResult? Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult? Function(_SelectHours value)? selectHour,
    TResult? Function(_SelectMinutes value)? selectMinutes,
    TResult? Function(_ValidateScreen value)? validateScreen,
    TResult? Function(_LEFSInitial value)? lefsInitial,
  }) {
    return selectMinutes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionnaireSubmit value)? onSubmit,
    TResult Function(_SelectActivity value)? selectActivity,
    TResult Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult Function(_SelectHours value)? selectHour,
    TResult Function(_SelectMinutes value)? selectMinutes,
    TResult Function(_ValidateScreen value)? validateScreen,
    TResult Function(_LEFSInitial value)? lefsInitial,
    required TResult orElse(),
  }) {
    if (selectMinutes != null) {
      return selectMinutes(this);
    }
    return orElse();
  }
}

abstract class _SelectMinutes implements QuestionnaireEvent {
  factory _SelectMinutes(
      {required final int minutes,
      required final QuestionnaireFillStatus fillStatus}) = _$SelectMinutesImpl;

  int get minutes;
  QuestionnaireFillStatus get fillStatus;

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectMinutesImplCopyWith<_$SelectMinutesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateScreenImplCopyWith<$Res> {
  factory _$$ValidateScreenImplCopyWith(_$ValidateScreenImpl value,
          $Res Function(_$ValidateScreenImpl) then) =
      __$$ValidateScreenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionnaireFillStatus fillStatus});
}

/// @nodoc
class __$$ValidateScreenImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$ValidateScreenImpl>
    implements _$$ValidateScreenImplCopyWith<$Res> {
  __$$ValidateScreenImplCopyWithImpl(
      _$ValidateScreenImpl _value, $Res Function(_$ValidateScreenImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fillStatus = null,
  }) {
    return _then(_$ValidateScreenImpl(
      null == fillStatus
          ? _value.fillStatus
          : fillStatus // ignore: cast_nullable_to_non_nullable
              as QuestionnaireFillStatus,
    ));
  }
}

/// @nodoc

class _$ValidateScreenImpl implements _ValidateScreen {
  _$ValidateScreenImpl(this.fillStatus);

  @override
  final QuestionnaireFillStatus fillStatus;

  @override
  String toString() {
    return 'QuestionnaireEvent.validateScreen(fillStatus: $fillStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateScreenImpl &&
            (identical(other.fillStatus, fillStatus) ||
                other.fillStatus == fillStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fillStatus);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateScreenImplCopyWith<_$ValidateScreenImpl> get copyWith =>
      __$$ValidateScreenImplCopyWithImpl<_$ValidateScreenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireFillStatus fillStatus) onSubmit,
    required TResult Function(
            bool hasActivity, QuestionnaireFillStatus fillStatus)
        selectActivity,
    required TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)
        selectDaysInWeek,
    required TResult Function(int hours, QuestionnaireFillStatus fillStatus)
        selectHour,
    required TResult Function(int minutes, QuestionnaireFillStatus fillStatus)
        selectMinutes,
    required TResult Function(QuestionnaireFillStatus fillStatus)
        validateScreen,
    required TResult Function(Map<String, DifficultyLevel> initialData)
        lefsInitial,
  }) {
    return validateScreen(fillStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult? Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult? Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult? Function(int hours, QuestionnaireFillStatus fillStatus)?
        selectHour,
    TResult? Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult? Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult? Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
  }) {
    return validateScreen?.call(fillStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult Function(int hours, QuestionnaireFillStatus fillStatus)? selectHour,
    TResult Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
    required TResult orElse(),
  }) {
    if (validateScreen != null) {
      return validateScreen(fillStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionnaireSubmit value) onSubmit,
    required TResult Function(_SelectActivity value) selectActivity,
    required TResult Function(_SelectDaysInWeek value) selectDaysInWeek,
    required TResult Function(_SelectHours value) selectHour,
    required TResult Function(_SelectMinutes value) selectMinutes,
    required TResult Function(_ValidateScreen value) validateScreen,
    required TResult Function(_LEFSInitial value) lefsInitial,
  }) {
    return validateScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuestionnaireSubmit value)? onSubmit,
    TResult? Function(_SelectActivity value)? selectActivity,
    TResult? Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult? Function(_SelectHours value)? selectHour,
    TResult? Function(_SelectMinutes value)? selectMinutes,
    TResult? Function(_ValidateScreen value)? validateScreen,
    TResult? Function(_LEFSInitial value)? lefsInitial,
  }) {
    return validateScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionnaireSubmit value)? onSubmit,
    TResult Function(_SelectActivity value)? selectActivity,
    TResult Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult Function(_SelectHours value)? selectHour,
    TResult Function(_SelectMinutes value)? selectMinutes,
    TResult Function(_ValidateScreen value)? validateScreen,
    TResult Function(_LEFSInitial value)? lefsInitial,
    required TResult orElse(),
  }) {
    if (validateScreen != null) {
      return validateScreen(this);
    }
    return orElse();
  }
}

abstract class _ValidateScreen implements QuestionnaireEvent {
  factory _ValidateScreen(final QuestionnaireFillStatus fillStatus) =
      _$ValidateScreenImpl;

  QuestionnaireFillStatus get fillStatus;

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidateScreenImplCopyWith<_$ValidateScreenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LEFSInitialImplCopyWith<$Res> {
  factory _$$LEFSInitialImplCopyWith(
          _$LEFSInitialImpl value, $Res Function(_$LEFSInitialImpl) then) =
      __$$LEFSInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, DifficultyLevel> initialData});
}

/// @nodoc
class __$$LEFSInitialImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$LEFSInitialImpl>
    implements _$$LEFSInitialImplCopyWith<$Res> {
  __$$LEFSInitialImplCopyWithImpl(
      _$LEFSInitialImpl _value, $Res Function(_$LEFSInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialData = null,
  }) {
    return _then(_$LEFSInitialImpl(
      null == initialData
          ? _value._initialData
          : initialData // ignore: cast_nullable_to_non_nullable
              as Map<String, DifficultyLevel>,
    ));
  }
}

/// @nodoc

class _$LEFSInitialImpl implements _LEFSInitial {
  _$LEFSInitialImpl(final Map<String, DifficultyLevel> initialData)
      : _initialData = initialData;

  final Map<String, DifficultyLevel> _initialData;
  @override
  Map<String, DifficultyLevel> get initialData {
    if (_initialData is EqualUnmodifiableMapView) return _initialData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_initialData);
  }

  @override
  String toString() {
    return 'QuestionnaireEvent.lefsInitial(initialData: $initialData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LEFSInitialImpl &&
            const DeepCollectionEquality()
                .equals(other._initialData, _initialData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_initialData));

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LEFSInitialImplCopyWith<_$LEFSInitialImpl> get copyWith =>
      __$$LEFSInitialImplCopyWithImpl<_$LEFSInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionnaireFillStatus fillStatus) onSubmit,
    required TResult Function(
            bool hasActivity, QuestionnaireFillStatus fillStatus)
        selectActivity,
    required TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)
        selectDaysInWeek,
    required TResult Function(int hours, QuestionnaireFillStatus fillStatus)
        selectHour,
    required TResult Function(int minutes, QuestionnaireFillStatus fillStatus)
        selectMinutes,
    required TResult Function(QuestionnaireFillStatus fillStatus)
        validateScreen,
    required TResult Function(Map<String, DifficultyLevel> initialData)
        lefsInitial,
  }) {
    return lefsInitial(initialData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult? Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult? Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult? Function(int hours, QuestionnaireFillStatus fillStatus)?
        selectHour,
    TResult? Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult? Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult? Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
  }) {
    return lefsInitial?.call(initialData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireFillStatus fillStatus)? onSubmit,
    TResult Function(bool hasActivity, QuestionnaireFillStatus fillStatus)?
        selectActivity,
    TResult Function(int? daysInWeek, bool shouldValidate,
            QuestionnaireFillStatus fillStatus)?
        selectDaysInWeek,
    TResult Function(int hours, QuestionnaireFillStatus fillStatus)? selectHour,
    TResult Function(int minutes, QuestionnaireFillStatus fillStatus)?
        selectMinutes,
    TResult Function(QuestionnaireFillStatus fillStatus)? validateScreen,
    TResult Function(Map<String, DifficultyLevel> initialData)? lefsInitial,
    required TResult orElse(),
  }) {
    if (lefsInitial != null) {
      return lefsInitial(initialData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionnaireSubmit value) onSubmit,
    required TResult Function(_SelectActivity value) selectActivity,
    required TResult Function(_SelectDaysInWeek value) selectDaysInWeek,
    required TResult Function(_SelectHours value) selectHour,
    required TResult Function(_SelectMinutes value) selectMinutes,
    required TResult Function(_ValidateScreen value) validateScreen,
    required TResult Function(_LEFSInitial value) lefsInitial,
  }) {
    return lefsInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuestionnaireSubmit value)? onSubmit,
    TResult? Function(_SelectActivity value)? selectActivity,
    TResult? Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult? Function(_SelectHours value)? selectHour,
    TResult? Function(_SelectMinutes value)? selectMinutes,
    TResult? Function(_ValidateScreen value)? validateScreen,
    TResult? Function(_LEFSInitial value)? lefsInitial,
  }) {
    return lefsInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionnaireSubmit value)? onSubmit,
    TResult Function(_SelectActivity value)? selectActivity,
    TResult Function(_SelectDaysInWeek value)? selectDaysInWeek,
    TResult Function(_SelectHours value)? selectHour,
    TResult Function(_SelectMinutes value)? selectMinutes,
    TResult Function(_ValidateScreen value)? validateScreen,
    TResult Function(_LEFSInitial value)? lefsInitial,
    required TResult orElse(),
  }) {
    if (lefsInitial != null) {
      return lefsInitial(this);
    }
    return orElse();
  }
}

abstract class _LEFSInitial implements QuestionnaireEvent {
  factory _LEFSInitial(final Map<String, DifficultyLevel> initialData) =
      _$LEFSInitialImpl;

  Map<String, DifficultyLevel> get initialData;

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LEFSInitialImplCopyWith<_$LEFSInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionnaireState {
  QuestionnaireStatus get status => throw _privateConstructorUsedError;
  QuestionnaireModel get travelData => throw _privateConstructorUsedError;
  QuestionnaireModel get workData => throw _privateConstructorUsedError;
  SedentaryModel get sedentaryData => throw _privateConstructorUsedError;
  QuestionnaireModel get recreationData => throw _privateConstructorUsedError;
  bool? get hasWorkInitialActivity => throw _privateConstructorUsedError;
  Map<String, DifficultyLevel> get lefsData =>
      throw _privateConstructorUsedError;
  String get daysError => throw _privateConstructorUsedError;
  bool get isNextValid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuestionnaireStatus status,
            QuestionnaireModel travelData,
            QuestionnaireModel workData,
            SedentaryModel sedentaryData,
            QuestionnaireModel recreationData,
            bool? hasWorkInitialActivity,
            Map<String, DifficultyLevel> lefsData,
            String daysError,
            bool isNextValid)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            QuestionnaireStatus status,
            QuestionnaireModel travelData,
            QuestionnaireModel workData,
            SedentaryModel sedentaryData,
            QuestionnaireModel recreationData,
            bool? hasWorkInitialActivity,
            Map<String, DifficultyLevel> lefsData,
            String daysError,
            bool isNextValid)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            QuestionnaireStatus status,
            QuestionnaireModel travelData,
            QuestionnaireModel workData,
            SedentaryModel sedentaryData,
            QuestionnaireModel recreationData,
            bool? hasWorkInitialActivity,
            Map<String, DifficultyLevel> lefsData,
            String daysError,
            bool isNextValid)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionnaireStateInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuestionnaireStateInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionnaireStateInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionnaireStateCopyWith<QuestionnaireState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionnaireStateCopyWith<$Res> {
  factory $QuestionnaireStateCopyWith(
          QuestionnaireState value, $Res Function(QuestionnaireState) then) =
      _$QuestionnaireStateCopyWithImpl<$Res, QuestionnaireState>;
  @useResult
  $Res call(
      {QuestionnaireStatus status,
      QuestionnaireModel travelData,
      QuestionnaireModel workData,
      SedentaryModel sedentaryData,
      QuestionnaireModel recreationData,
      bool? hasWorkInitialActivity,
      Map<String, DifficultyLevel> lefsData,
      String daysError,
      bool isNextValid});

  $QuestionnaireModelCopyWith<$Res> get travelData;
  $QuestionnaireModelCopyWith<$Res> get workData;
  $SedentaryModelCopyWith<$Res> get sedentaryData;
  $QuestionnaireModelCopyWith<$Res> get recreationData;
}

/// @nodoc
class _$QuestionnaireStateCopyWithImpl<$Res, $Val extends QuestionnaireState>
    implements $QuestionnaireStateCopyWith<$Res> {
  _$QuestionnaireStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? travelData = null,
    Object? workData = null,
    Object? sedentaryData = null,
    Object? recreationData = null,
    Object? hasWorkInitialActivity = freezed,
    Object? lefsData = null,
    Object? daysError = null,
    Object? isNextValid = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionnaireStatus,
      travelData: null == travelData
          ? _value.travelData
          : travelData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel,
      workData: null == workData
          ? _value.workData
          : workData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel,
      sedentaryData: null == sedentaryData
          ? _value.sedentaryData
          : sedentaryData // ignore: cast_nullable_to_non_nullable
              as SedentaryModel,
      recreationData: null == recreationData
          ? _value.recreationData
          : recreationData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel,
      hasWorkInitialActivity: freezed == hasWorkInitialActivity
          ? _value.hasWorkInitialActivity
          : hasWorkInitialActivity // ignore: cast_nullable_to_non_nullable
              as bool?,
      lefsData: null == lefsData
          ? _value.lefsData
          : lefsData // ignore: cast_nullable_to_non_nullable
              as Map<String, DifficultyLevel>,
      daysError: null == daysError
          ? _value.daysError
          : daysError // ignore: cast_nullable_to_non_nullable
              as String,
      isNextValid: null == isNextValid
          ? _value.isNextValid
          : isNextValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireModelCopyWith<$Res> get travelData {
    return $QuestionnaireModelCopyWith<$Res>(_value.travelData, (value) {
      return _then(_value.copyWith(travelData: value) as $Val);
    });
  }

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireModelCopyWith<$Res> get workData {
    return $QuestionnaireModelCopyWith<$Res>(_value.workData, (value) {
      return _then(_value.copyWith(workData: value) as $Val);
    });
  }

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SedentaryModelCopyWith<$Res> get sedentaryData {
    return $SedentaryModelCopyWith<$Res>(_value.sedentaryData, (value) {
      return _then(_value.copyWith(sedentaryData: value) as $Val);
    });
  }

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionnaireModelCopyWith<$Res> get recreationData {
    return $QuestionnaireModelCopyWith<$Res>(_value.recreationData, (value) {
      return _then(_value.copyWith(recreationData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionnaireStateInitialImplCopyWith<$Res>
    implements $QuestionnaireStateCopyWith<$Res> {
  factory _$$QuestionnaireStateInitialImplCopyWith(
          _$QuestionnaireStateInitialImpl value,
          $Res Function(_$QuestionnaireStateInitialImpl) then) =
      __$$QuestionnaireStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {QuestionnaireStatus status,
      QuestionnaireModel travelData,
      QuestionnaireModel workData,
      SedentaryModel sedentaryData,
      QuestionnaireModel recreationData,
      bool? hasWorkInitialActivity,
      Map<String, DifficultyLevel> lefsData,
      String daysError,
      bool isNextValid});

  @override
  $QuestionnaireModelCopyWith<$Res> get travelData;
  @override
  $QuestionnaireModelCopyWith<$Res> get workData;
  @override
  $SedentaryModelCopyWith<$Res> get sedentaryData;
  @override
  $QuestionnaireModelCopyWith<$Res> get recreationData;
}

/// @nodoc
class __$$QuestionnaireStateInitialImplCopyWithImpl<$Res>
    extends _$QuestionnaireStateCopyWithImpl<$Res,
        _$QuestionnaireStateInitialImpl>
    implements _$$QuestionnaireStateInitialImplCopyWith<$Res> {
  __$$QuestionnaireStateInitialImplCopyWithImpl(
      _$QuestionnaireStateInitialImpl _value,
      $Res Function(_$QuestionnaireStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? travelData = null,
    Object? workData = null,
    Object? sedentaryData = null,
    Object? recreationData = null,
    Object? hasWorkInitialActivity = freezed,
    Object? lefsData = null,
    Object? daysError = null,
    Object? isNextValid = null,
  }) {
    return _then(_$QuestionnaireStateInitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionnaireStatus,
      travelData: null == travelData
          ? _value.travelData
          : travelData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel,
      workData: null == workData
          ? _value.workData
          : workData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel,
      sedentaryData: null == sedentaryData
          ? _value.sedentaryData
          : sedentaryData // ignore: cast_nullable_to_non_nullable
              as SedentaryModel,
      recreationData: null == recreationData
          ? _value.recreationData
          : recreationData // ignore: cast_nullable_to_non_nullable
              as QuestionnaireModel,
      hasWorkInitialActivity: freezed == hasWorkInitialActivity
          ? _value.hasWorkInitialActivity
          : hasWorkInitialActivity // ignore: cast_nullable_to_non_nullable
              as bool?,
      lefsData: null == lefsData
          ? _value._lefsData
          : lefsData // ignore: cast_nullable_to_non_nullable
              as Map<String, DifficultyLevel>,
      daysError: null == daysError
          ? _value.daysError
          : daysError // ignore: cast_nullable_to_non_nullable
              as String,
      isNextValid: null == isNextValid
          ? _value.isNextValid
          : isNextValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QuestionnaireStateInitialImpl implements _QuestionnaireStateInitial {
  _$QuestionnaireStateInitialImpl(
      {this.status = QuestionnaireStatus.initial,
      this.travelData = const QuestionnaireModel.from(),
      this.workData = const QuestionnaireModel.from(),
      this.sedentaryData = const SedentaryModel.from(),
      this.recreationData = const QuestionnaireModel.from(),
      this.hasWorkInitialActivity,
      final Map<String, DifficultyLevel> lefsData = const {},
      this.daysError = '',
      this.isNextValid = false})
      : _lefsData = lefsData;

  @override
  @JsonKey()
  final QuestionnaireStatus status;
  @override
  @JsonKey()
  final QuestionnaireModel travelData;
  @override
  @JsonKey()
  final QuestionnaireModel workData;
  @override
  @JsonKey()
  final SedentaryModel sedentaryData;
  @override
  @JsonKey()
  final QuestionnaireModel recreationData;
  @override
  final bool? hasWorkInitialActivity;
  final Map<String, DifficultyLevel> _lefsData;
  @override
  @JsonKey()
  Map<String, DifficultyLevel> get lefsData {
    if (_lefsData is EqualUnmodifiableMapView) return _lefsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_lefsData);
  }

  @override
  @JsonKey()
  final String daysError;
  @override
  @JsonKey()
  final bool isNextValid;

  @override
  String toString() {
    return 'QuestionnaireState.initial(status: $status, travelData: $travelData, workData: $workData, sedentaryData: $sedentaryData, recreationData: $recreationData, hasWorkInitialActivity: $hasWorkInitialActivity, lefsData: $lefsData, daysError: $daysError, isNextValid: $isNextValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireStateInitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.travelData, travelData) ||
                other.travelData == travelData) &&
            (identical(other.workData, workData) ||
                other.workData == workData) &&
            (identical(other.sedentaryData, sedentaryData) ||
                other.sedentaryData == sedentaryData) &&
            (identical(other.recreationData, recreationData) ||
                other.recreationData == recreationData) &&
            (identical(other.hasWorkInitialActivity, hasWorkInitialActivity) ||
                other.hasWorkInitialActivity == hasWorkInitialActivity) &&
            const DeepCollectionEquality().equals(other._lefsData, _lefsData) &&
            (identical(other.daysError, daysError) ||
                other.daysError == daysError) &&
            (identical(other.isNextValid, isNextValid) ||
                other.isNextValid == isNextValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      travelData,
      workData,
      sedentaryData,
      recreationData,
      hasWorkInitialActivity,
      const DeepCollectionEquality().hash(_lefsData),
      daysError,
      isNextValid);

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionnaireStateInitialImplCopyWith<_$QuestionnaireStateInitialImpl>
      get copyWith => __$$QuestionnaireStateInitialImplCopyWithImpl<
          _$QuestionnaireStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuestionnaireStatus status,
            QuestionnaireModel travelData,
            QuestionnaireModel workData,
            SedentaryModel sedentaryData,
            QuestionnaireModel recreationData,
            bool? hasWorkInitialActivity,
            Map<String, DifficultyLevel> lefsData,
            String daysError,
            bool isNextValid)
        initial,
  }) {
    return initial(status, travelData, workData, sedentaryData, recreationData,
        hasWorkInitialActivity, lefsData, daysError, isNextValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            QuestionnaireStatus status,
            QuestionnaireModel travelData,
            QuestionnaireModel workData,
            SedentaryModel sedentaryData,
            QuestionnaireModel recreationData,
            bool? hasWorkInitialActivity,
            Map<String, DifficultyLevel> lefsData,
            String daysError,
            bool isNextValid)?
        initial,
  }) {
    return initial?.call(
        status,
        travelData,
        workData,
        sedentaryData,
        recreationData,
        hasWorkInitialActivity,
        lefsData,
        daysError,
        isNextValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            QuestionnaireStatus status,
            QuestionnaireModel travelData,
            QuestionnaireModel workData,
            SedentaryModel sedentaryData,
            QuestionnaireModel recreationData,
            bool? hasWorkInitialActivity,
            Map<String, DifficultyLevel> lefsData,
            String daysError,
            bool isNextValid)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          status,
          travelData,
          workData,
          sedentaryData,
          recreationData,
          hasWorkInitialActivity,
          lefsData,
          daysError,
          isNextValid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuestionnaireStateInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuestionnaireStateInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuestionnaireStateInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _QuestionnaireStateInitial implements QuestionnaireState {
  factory _QuestionnaireStateInitial(
      {final QuestionnaireStatus status,
      final QuestionnaireModel travelData,
      final QuestionnaireModel workData,
      final SedentaryModel sedentaryData,
      final QuestionnaireModel recreationData,
      final bool? hasWorkInitialActivity,
      final Map<String, DifficultyLevel> lefsData,
      final String daysError,
      final bool isNextValid}) = _$QuestionnaireStateInitialImpl;

  @override
  QuestionnaireStatus get status;
  @override
  QuestionnaireModel get travelData;
  @override
  QuestionnaireModel get workData;
  @override
  SedentaryModel get sedentaryData;
  @override
  QuestionnaireModel get recreationData;
  @override
  bool? get hasWorkInitialActivity;
  @override
  Map<String, DifficultyLevel> get lefsData;
  @override
  String get daysError;
  @override
  bool get isNextValid;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireStateInitialImplCopyWith<_$QuestionnaireStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
