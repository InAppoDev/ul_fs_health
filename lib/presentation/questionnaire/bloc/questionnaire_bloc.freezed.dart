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
    required TResult Function() onSubmit,
    required TResult Function(bool isModerateActivity) selectModerateActivity,
    required TResult Function(int? daysInWeek, bool shouldValidate)
        selectWorkDaysInWeek,
    required TResult Function() validateWorkScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSubmit,
    TResult? Function(bool isModerateActivity)? selectModerateActivity,
    TResult? Function(int? daysInWeek, bool shouldValidate)?
        selectWorkDaysInWeek,
    TResult? Function()? validateWorkScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubmit,
    TResult Function(bool isModerateActivity)? selectModerateActivity,
    TResult Function(int? daysInWeek, bool shouldValidate)?
        selectWorkDaysInWeek,
    TResult Function()? validateWorkScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionnaireSubmit value) onSubmit,
    required TResult Function(_SelectModerateActivity value)
        selectModerateActivity,
    required TResult Function(_SelectWorkDaysInWeek value) selectWorkDaysInWeek,
    required TResult Function(_ValidateWorkScreen value) validateWorkScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireSubmit value)? onSubmit,
    TResult? Function(_SelectModerateActivity value)? selectModerateActivity,
    TResult? Function(_SelectWorkDaysInWeek value)? selectWorkDaysInWeek,
    TResult? Function(_ValidateWorkScreen value)? validateWorkScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionnaireSubmit value)? onSubmit,
    TResult Function(_SelectModerateActivity value)? selectModerateActivity,
    TResult Function(_SelectWorkDaysInWeek value)? selectWorkDaysInWeek,
    TResult Function(_ValidateWorkScreen value)? validateWorkScreen,
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
}

/// @nodoc

class _$QuestionnaireSubmitImpl implements QuestionnaireSubmit {
  _$QuestionnaireSubmitImpl();

  @override
  String toString() {
    return 'QuestionnaireEvent.onSubmit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireSubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubmit,
    required TResult Function(bool isModerateActivity) selectModerateActivity,
    required TResult Function(int? daysInWeek, bool shouldValidate)
        selectWorkDaysInWeek,
    required TResult Function() validateWorkScreen,
  }) {
    return onSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSubmit,
    TResult? Function(bool isModerateActivity)? selectModerateActivity,
    TResult? Function(int? daysInWeek, bool shouldValidate)?
        selectWorkDaysInWeek,
    TResult? Function()? validateWorkScreen,
  }) {
    return onSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubmit,
    TResult Function(bool isModerateActivity)? selectModerateActivity,
    TResult Function(int? daysInWeek, bool shouldValidate)?
        selectWorkDaysInWeek,
    TResult Function()? validateWorkScreen,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionnaireSubmit value) onSubmit,
    required TResult Function(_SelectModerateActivity value)
        selectModerateActivity,
    required TResult Function(_SelectWorkDaysInWeek value) selectWorkDaysInWeek,
    required TResult Function(_ValidateWorkScreen value) validateWorkScreen,
  }) {
    return onSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireSubmit value)? onSubmit,
    TResult? Function(_SelectModerateActivity value)? selectModerateActivity,
    TResult? Function(_SelectWorkDaysInWeek value)? selectWorkDaysInWeek,
    TResult? Function(_ValidateWorkScreen value)? validateWorkScreen,
  }) {
    return onSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionnaireSubmit value)? onSubmit,
    TResult Function(_SelectModerateActivity value)? selectModerateActivity,
    TResult Function(_SelectWorkDaysInWeek value)? selectWorkDaysInWeek,
    TResult Function(_ValidateWorkScreen value)? validateWorkScreen,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit(this);
    }
    return orElse();
  }
}

abstract class QuestionnaireSubmit implements QuestionnaireEvent {
  factory QuestionnaireSubmit() = _$QuestionnaireSubmitImpl;
}

/// @nodoc
abstract class _$$SelectModerateActivityImplCopyWith<$Res> {
  factory _$$SelectModerateActivityImplCopyWith(
          _$SelectModerateActivityImpl value,
          $Res Function(_$SelectModerateActivityImpl) then) =
      __$$SelectModerateActivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isModerateActivity});
}

/// @nodoc
class __$$SelectModerateActivityImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$SelectModerateActivityImpl>
    implements _$$SelectModerateActivityImplCopyWith<$Res> {
  __$$SelectModerateActivityImplCopyWithImpl(
      _$SelectModerateActivityImpl _value,
      $Res Function(_$SelectModerateActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isModerateActivity = null,
  }) {
    return _then(_$SelectModerateActivityImpl(
      null == isModerateActivity
          ? _value.isModerateActivity
          : isModerateActivity // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectModerateActivityImpl implements _SelectModerateActivity {
  _$SelectModerateActivityImpl(this.isModerateActivity);

  @override
  final bool isModerateActivity;

  @override
  String toString() {
    return 'QuestionnaireEvent.selectModerateActivity(isModerateActivity: $isModerateActivity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectModerateActivityImpl &&
            (identical(other.isModerateActivity, isModerateActivity) ||
                other.isModerateActivity == isModerateActivity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isModerateActivity);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectModerateActivityImplCopyWith<_$SelectModerateActivityImpl>
      get copyWith => __$$SelectModerateActivityImplCopyWithImpl<
          _$SelectModerateActivityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubmit,
    required TResult Function(bool isModerateActivity) selectModerateActivity,
    required TResult Function(int? daysInWeek, bool shouldValidate)
        selectWorkDaysInWeek,
    required TResult Function() validateWorkScreen,
  }) {
    return selectModerateActivity(isModerateActivity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSubmit,
    TResult? Function(bool isModerateActivity)? selectModerateActivity,
    TResult? Function(int? daysInWeek, bool shouldValidate)?
        selectWorkDaysInWeek,
    TResult? Function()? validateWorkScreen,
  }) {
    return selectModerateActivity?.call(isModerateActivity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubmit,
    TResult Function(bool isModerateActivity)? selectModerateActivity,
    TResult Function(int? daysInWeek, bool shouldValidate)?
        selectWorkDaysInWeek,
    TResult Function()? validateWorkScreen,
    required TResult orElse(),
  }) {
    if (selectModerateActivity != null) {
      return selectModerateActivity(isModerateActivity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionnaireSubmit value) onSubmit,
    required TResult Function(_SelectModerateActivity value)
        selectModerateActivity,
    required TResult Function(_SelectWorkDaysInWeek value) selectWorkDaysInWeek,
    required TResult Function(_ValidateWorkScreen value) validateWorkScreen,
  }) {
    return selectModerateActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireSubmit value)? onSubmit,
    TResult? Function(_SelectModerateActivity value)? selectModerateActivity,
    TResult? Function(_SelectWorkDaysInWeek value)? selectWorkDaysInWeek,
    TResult? Function(_ValidateWorkScreen value)? validateWorkScreen,
  }) {
    return selectModerateActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionnaireSubmit value)? onSubmit,
    TResult Function(_SelectModerateActivity value)? selectModerateActivity,
    TResult Function(_SelectWorkDaysInWeek value)? selectWorkDaysInWeek,
    TResult Function(_ValidateWorkScreen value)? validateWorkScreen,
    required TResult orElse(),
  }) {
    if (selectModerateActivity != null) {
      return selectModerateActivity(this);
    }
    return orElse();
  }
}

abstract class _SelectModerateActivity implements QuestionnaireEvent {
  factory _SelectModerateActivity(final bool isModerateActivity) =
      _$SelectModerateActivityImpl;

  bool get isModerateActivity;

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectModerateActivityImplCopyWith<_$SelectModerateActivityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectWorkDaysInWeekImplCopyWith<$Res> {
  factory _$$SelectWorkDaysInWeekImplCopyWith(_$SelectWorkDaysInWeekImpl value,
          $Res Function(_$SelectWorkDaysInWeekImpl) then) =
      __$$SelectWorkDaysInWeekImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? daysInWeek, bool shouldValidate});
}

/// @nodoc
class __$$SelectWorkDaysInWeekImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$SelectWorkDaysInWeekImpl>
    implements _$$SelectWorkDaysInWeekImplCopyWith<$Res> {
  __$$SelectWorkDaysInWeekImplCopyWithImpl(_$SelectWorkDaysInWeekImpl _value,
      $Res Function(_$SelectWorkDaysInWeekImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daysInWeek = freezed,
    Object? shouldValidate = null,
  }) {
    return _then(_$SelectWorkDaysInWeekImpl(
      daysInWeek: freezed == daysInWeek
          ? _value.daysInWeek
          : daysInWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      shouldValidate: null == shouldValidate
          ? _value.shouldValidate
          : shouldValidate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectWorkDaysInWeekImpl implements _SelectWorkDaysInWeek {
  _$SelectWorkDaysInWeekImpl({this.daysInWeek, required this.shouldValidate});

  @override
  final int? daysInWeek;
  @override
  final bool shouldValidate;

  @override
  String toString() {
    return 'QuestionnaireEvent.selectWorkDaysInWeek(daysInWeek: $daysInWeek, shouldValidate: $shouldValidate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectWorkDaysInWeekImpl &&
            (identical(other.daysInWeek, daysInWeek) ||
                other.daysInWeek == daysInWeek) &&
            (identical(other.shouldValidate, shouldValidate) ||
                other.shouldValidate == shouldValidate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, daysInWeek, shouldValidate);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectWorkDaysInWeekImplCopyWith<_$SelectWorkDaysInWeekImpl>
      get copyWith =>
          __$$SelectWorkDaysInWeekImplCopyWithImpl<_$SelectWorkDaysInWeekImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubmit,
    required TResult Function(bool isModerateActivity) selectModerateActivity,
    required TResult Function(int? daysInWeek, bool shouldValidate)
        selectWorkDaysInWeek,
    required TResult Function() validateWorkScreen,
  }) {
    return selectWorkDaysInWeek(daysInWeek, shouldValidate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSubmit,
    TResult? Function(bool isModerateActivity)? selectModerateActivity,
    TResult? Function(int? daysInWeek, bool shouldValidate)?
        selectWorkDaysInWeek,
    TResult? Function()? validateWorkScreen,
  }) {
    return selectWorkDaysInWeek?.call(daysInWeek, shouldValidate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubmit,
    TResult Function(bool isModerateActivity)? selectModerateActivity,
    TResult Function(int? daysInWeek, bool shouldValidate)?
        selectWorkDaysInWeek,
    TResult Function()? validateWorkScreen,
    required TResult orElse(),
  }) {
    if (selectWorkDaysInWeek != null) {
      return selectWorkDaysInWeek(daysInWeek, shouldValidate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionnaireSubmit value) onSubmit,
    required TResult Function(_SelectModerateActivity value)
        selectModerateActivity,
    required TResult Function(_SelectWorkDaysInWeek value) selectWorkDaysInWeek,
    required TResult Function(_ValidateWorkScreen value) validateWorkScreen,
  }) {
    return selectWorkDaysInWeek(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireSubmit value)? onSubmit,
    TResult? Function(_SelectModerateActivity value)? selectModerateActivity,
    TResult? Function(_SelectWorkDaysInWeek value)? selectWorkDaysInWeek,
    TResult? Function(_ValidateWorkScreen value)? validateWorkScreen,
  }) {
    return selectWorkDaysInWeek?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionnaireSubmit value)? onSubmit,
    TResult Function(_SelectModerateActivity value)? selectModerateActivity,
    TResult Function(_SelectWorkDaysInWeek value)? selectWorkDaysInWeek,
    TResult Function(_ValidateWorkScreen value)? validateWorkScreen,
    required TResult orElse(),
  }) {
    if (selectWorkDaysInWeek != null) {
      return selectWorkDaysInWeek(this);
    }
    return orElse();
  }
}

abstract class _SelectWorkDaysInWeek implements QuestionnaireEvent {
  factory _SelectWorkDaysInWeek(
      {final int? daysInWeek,
      required final bool shouldValidate}) = _$SelectWorkDaysInWeekImpl;

  int? get daysInWeek;
  bool get shouldValidate;

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectWorkDaysInWeekImplCopyWith<_$SelectWorkDaysInWeekImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateWorkScreenImplCopyWith<$Res> {
  factory _$$ValidateWorkScreenImplCopyWith(_$ValidateWorkScreenImpl value,
          $Res Function(_$ValidateWorkScreenImpl) then) =
      __$$ValidateWorkScreenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ValidateWorkScreenImplCopyWithImpl<$Res>
    extends _$QuestionnaireEventCopyWithImpl<$Res, _$ValidateWorkScreenImpl>
    implements _$$ValidateWorkScreenImplCopyWith<$Res> {
  __$$ValidateWorkScreenImplCopyWithImpl(_$ValidateWorkScreenImpl _value,
      $Res Function(_$ValidateWorkScreenImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionnaireEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ValidateWorkScreenImpl implements _ValidateWorkScreen {
  _$ValidateWorkScreenImpl();

  @override
  String toString() {
    return 'QuestionnaireEvent.validateWorkScreen()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ValidateWorkScreenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubmit,
    required TResult Function(bool isModerateActivity) selectModerateActivity,
    required TResult Function(int? daysInWeek, bool shouldValidate)
        selectWorkDaysInWeek,
    required TResult Function() validateWorkScreen,
  }) {
    return validateWorkScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSubmit,
    TResult? Function(bool isModerateActivity)? selectModerateActivity,
    TResult? Function(int? daysInWeek, bool shouldValidate)?
        selectWorkDaysInWeek,
    TResult? Function()? validateWorkScreen,
  }) {
    return validateWorkScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubmit,
    TResult Function(bool isModerateActivity)? selectModerateActivity,
    TResult Function(int? daysInWeek, bool shouldValidate)?
        selectWorkDaysInWeek,
    TResult Function()? validateWorkScreen,
    required TResult orElse(),
  }) {
    if (validateWorkScreen != null) {
      return validateWorkScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionnaireSubmit value) onSubmit,
    required TResult Function(_SelectModerateActivity value)
        selectModerateActivity,
    required TResult Function(_SelectWorkDaysInWeek value) selectWorkDaysInWeek,
    required TResult Function(_ValidateWorkScreen value) validateWorkScreen,
  }) {
    return validateWorkScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireSubmit value)? onSubmit,
    TResult? Function(_SelectModerateActivity value)? selectModerateActivity,
    TResult? Function(_SelectWorkDaysInWeek value)? selectWorkDaysInWeek,
    TResult? Function(_ValidateWorkScreen value)? validateWorkScreen,
  }) {
    return validateWorkScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionnaireSubmit value)? onSubmit,
    TResult Function(_SelectModerateActivity value)? selectModerateActivity,
    TResult Function(_SelectWorkDaysInWeek value)? selectWorkDaysInWeek,
    TResult Function(_ValidateWorkScreen value)? validateWorkScreen,
    required TResult orElse(),
  }) {
    if (validateWorkScreen != null) {
      return validateWorkScreen(this);
    }
    return orElse();
  }
}

abstract class _ValidateWorkScreen implements QuestionnaireEvent {
  factory _ValidateWorkScreen() = _$ValidateWorkScreenImpl;
}

/// @nodoc
mixin _$QuestionnaireState {
  QuestionnaireStatus get status => throw _privateConstructorUsedError;
  bool? get isModerateActivity => throw _privateConstructorUsedError;
  int? get workDaysInWeek => throw _privateConstructorUsedError;
  String get workDaysError => throw _privateConstructorUsedError;
  bool get isNextValid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            QuestionnaireStatus status,
            bool? isModerateActivity,
            int? workDaysInWeek,
            String workDaysError,
            bool isNextValid)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireStatus status, bool? isModerateActivity,
            int? workDaysInWeek, String workDaysError, bool isNextValid)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireStatus status, bool? isModerateActivity,
            int? workDaysInWeek, String workDaysError, bool isNextValid)?
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
      bool? isModerateActivity,
      int? workDaysInWeek,
      String workDaysError,
      bool isNextValid});
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
    Object? isModerateActivity = freezed,
    Object? workDaysInWeek = freezed,
    Object? workDaysError = null,
    Object? isNextValid = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionnaireStatus,
      isModerateActivity: freezed == isModerateActivity
          ? _value.isModerateActivity
          : isModerateActivity // ignore: cast_nullable_to_non_nullable
              as bool?,
      workDaysInWeek: freezed == workDaysInWeek
          ? _value.workDaysInWeek
          : workDaysInWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      workDaysError: null == workDaysError
          ? _value.workDaysError
          : workDaysError // ignore: cast_nullable_to_non_nullable
              as String,
      isNextValid: null == isNextValid
          ? _value.isNextValid
          : isNextValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
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
      bool? isModerateActivity,
      int? workDaysInWeek,
      String workDaysError,
      bool isNextValid});
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
    Object? isModerateActivity = freezed,
    Object? workDaysInWeek = freezed,
    Object? workDaysError = null,
    Object? isNextValid = null,
  }) {
    return _then(_$QuestionnaireStateInitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuestionnaireStatus,
      isModerateActivity: freezed == isModerateActivity
          ? _value.isModerateActivity
          : isModerateActivity // ignore: cast_nullable_to_non_nullable
              as bool?,
      workDaysInWeek: freezed == workDaysInWeek
          ? _value.workDaysInWeek
          : workDaysInWeek // ignore: cast_nullable_to_non_nullable
              as int?,
      workDaysError: null == workDaysError
          ? _value.workDaysError
          : workDaysError // ignore: cast_nullable_to_non_nullable
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
      this.isModerateActivity,
      this.workDaysInWeek,
      this.workDaysError = '',
      this.isNextValid = false});

  @override
  @JsonKey()
  final QuestionnaireStatus status;
  @override
  final bool? isModerateActivity;
  @override
  final int? workDaysInWeek;
  @override
  @JsonKey()
  final String workDaysError;
  @override
  @JsonKey()
  final bool isNextValid;

  @override
  String toString() {
    return 'QuestionnaireState.initial(status: $status, isModerateActivity: $isModerateActivity, workDaysInWeek: $workDaysInWeek, workDaysError: $workDaysError, isNextValid: $isNextValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionnaireStateInitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isModerateActivity, isModerateActivity) ||
                other.isModerateActivity == isModerateActivity) &&
            (identical(other.workDaysInWeek, workDaysInWeek) ||
                other.workDaysInWeek == workDaysInWeek) &&
            (identical(other.workDaysError, workDaysError) ||
                other.workDaysError == workDaysError) &&
            (identical(other.isNextValid, isNextValid) ||
                other.isNextValid == isNextValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, isModerateActivity,
      workDaysInWeek, workDaysError, isNextValid);

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
            bool? isModerateActivity,
            int? workDaysInWeek,
            String workDaysError,
            bool isNextValid)
        initial,
  }) {
    return initial(
        status, isModerateActivity, workDaysInWeek, workDaysError, isNextValid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionnaireStatus status, bool? isModerateActivity,
            int? workDaysInWeek, String workDaysError, bool isNextValid)?
        initial,
  }) {
    return initial?.call(
        status, isModerateActivity, workDaysInWeek, workDaysError, isNextValid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionnaireStatus status, bool? isModerateActivity,
            int? workDaysInWeek, String workDaysError, bool isNextValid)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, isModerateActivity, workDaysInWeek, workDaysError,
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
      final bool? isModerateActivity,
      final int? workDaysInWeek,
      final String workDaysError,
      final bool isNextValid}) = _$QuestionnaireStateInitialImpl;

  @override
  QuestionnaireStatus get status;
  @override
  bool? get isModerateActivity;
  @override
  int? get workDaysInWeek;
  @override
  String get workDaysError;
  @override
  bool get isNextValid;

  /// Create a copy of QuestionnaireState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionnaireStateInitialImplCopyWith<_$QuestionnaireStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
