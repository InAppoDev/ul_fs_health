// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) startTimer,
    required TResult Function() cancelTimer,
    required TResult Function(int duration, int remainingTime) updateTimer,
    required TResult Function(int duration, int remainingTime) pauseTimer,
    required TResult Function() resumeTimer,
    required TResult Function() resetAfterSubmit,
    required TResult Function(bool enable) shouldEnableSound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? startTimer,
    TResult? Function()? cancelTimer,
    TResult? Function(int duration, int remainingTime)? updateTimer,
    TResult? Function(int duration, int remainingTime)? pauseTimer,
    TResult? Function()? resumeTimer,
    TResult? Function()? resetAfterSubmit,
    TResult? Function(bool enable)? shouldEnableSound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? startTimer,
    TResult Function()? cancelTimer,
    TResult Function(int duration, int remainingTime)? updateTimer,
    TResult Function(int duration, int remainingTime)? pauseTimer,
    TResult Function()? resumeTimer,
    TResult Function()? resetAfterSubmit,
    TResult Function(bool enable)? shouldEnableSound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_CancelTimer value) cancelTimer,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_PauseTimer value) pauseTimer,
    required TResult Function(_ResumeTimer value) resumeTimer,
    required TResult Function(_ResetAfterSubmit value) resetAfterSubmit,
    required TResult Function(_ShouldEnableSound value) shouldEnableSound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_CancelTimer value)? cancelTimer,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_PauseTimer value)? pauseTimer,
    TResult? Function(_ResumeTimer value)? resumeTimer,
    TResult? Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult? Function(_ShouldEnableSound value)? shouldEnableSound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_CancelTimer value)? cancelTimer,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_PauseTimer value)? pauseTimer,
    TResult Function(_ResumeTimer value)? resumeTimer,
    TResult Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult Function(_ShouldEnableSound value)? shouldEnableSound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerEventCopyWith<$Res> {
  factory $TimerEventCopyWith(
          TimerEvent value, $Res Function(TimerEvent) then) =
      _$TimerEventCopyWithImpl<$Res, TimerEvent>;
}

/// @nodoc
class _$TimerEventCopyWithImpl<$Res, $Val extends TimerEvent>
    implements $TimerEventCopyWith<$Res> {
  _$TimerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartTimerImplCopyWith<$Res> {
  factory _$$StartTimerImplCopyWith(
          _$StartTimerImpl value, $Res Function(_$StartTimerImpl) then) =
      __$$StartTimerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$StartTimerImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$StartTimerImpl>
    implements _$$StartTimerImplCopyWith<$Res> {
  __$$StartTimerImplCopyWithImpl(
      _$StartTimerImpl _value, $Res Function(_$StartTimerImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$StartTimerImpl(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartTimerImpl implements _StartTimer {
  const _$StartTimerImpl(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerEvent.startTimer(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTimerImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartTimerImplCopyWith<_$StartTimerImpl> get copyWith =>
      __$$StartTimerImplCopyWithImpl<_$StartTimerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) startTimer,
    required TResult Function() cancelTimer,
    required TResult Function(int duration, int remainingTime) updateTimer,
    required TResult Function(int duration, int remainingTime) pauseTimer,
    required TResult Function() resumeTimer,
    required TResult Function() resetAfterSubmit,
    required TResult Function(bool enable) shouldEnableSound,
  }) {
    return startTimer(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? startTimer,
    TResult? Function()? cancelTimer,
    TResult? Function(int duration, int remainingTime)? updateTimer,
    TResult? Function(int duration, int remainingTime)? pauseTimer,
    TResult? Function()? resumeTimer,
    TResult? Function()? resetAfterSubmit,
    TResult? Function(bool enable)? shouldEnableSound,
  }) {
    return startTimer?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? startTimer,
    TResult Function()? cancelTimer,
    TResult Function(int duration, int remainingTime)? updateTimer,
    TResult Function(int duration, int remainingTime)? pauseTimer,
    TResult Function()? resumeTimer,
    TResult Function()? resetAfterSubmit,
    TResult Function(bool enable)? shouldEnableSound,
    required TResult orElse(),
  }) {
    if (startTimer != null) {
      return startTimer(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_CancelTimer value) cancelTimer,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_PauseTimer value) pauseTimer,
    required TResult Function(_ResumeTimer value) resumeTimer,
    required TResult Function(_ResetAfterSubmit value) resetAfterSubmit,
    required TResult Function(_ShouldEnableSound value) shouldEnableSound,
  }) {
    return startTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_CancelTimer value)? cancelTimer,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_PauseTimer value)? pauseTimer,
    TResult? Function(_ResumeTimer value)? resumeTimer,
    TResult? Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult? Function(_ShouldEnableSound value)? shouldEnableSound,
  }) {
    return startTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_CancelTimer value)? cancelTimer,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_PauseTimer value)? pauseTimer,
    TResult Function(_ResumeTimer value)? resumeTimer,
    TResult Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult Function(_ShouldEnableSound value)? shouldEnableSound,
    required TResult orElse(),
  }) {
    if (startTimer != null) {
      return startTimer(this);
    }
    return orElse();
  }
}

abstract class _StartTimer implements TimerEvent {
  const factory _StartTimer(final int duration) = _$StartTimerImpl;

  int get duration;

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartTimerImplCopyWith<_$StartTimerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelTimerImplCopyWith<$Res> {
  factory _$$CancelTimerImplCopyWith(
          _$CancelTimerImpl value, $Res Function(_$CancelTimerImpl) then) =
      __$$CancelTimerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelTimerImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$CancelTimerImpl>
    implements _$$CancelTimerImplCopyWith<$Res> {
  __$$CancelTimerImplCopyWithImpl(
      _$CancelTimerImpl _value, $Res Function(_$CancelTimerImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CancelTimerImpl implements _CancelTimer {
  const _$CancelTimerImpl();

  @override
  String toString() {
    return 'TimerEvent.cancelTimer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelTimerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) startTimer,
    required TResult Function() cancelTimer,
    required TResult Function(int duration, int remainingTime) updateTimer,
    required TResult Function(int duration, int remainingTime) pauseTimer,
    required TResult Function() resumeTimer,
    required TResult Function() resetAfterSubmit,
    required TResult Function(bool enable) shouldEnableSound,
  }) {
    return cancelTimer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? startTimer,
    TResult? Function()? cancelTimer,
    TResult? Function(int duration, int remainingTime)? updateTimer,
    TResult? Function(int duration, int remainingTime)? pauseTimer,
    TResult? Function()? resumeTimer,
    TResult? Function()? resetAfterSubmit,
    TResult? Function(bool enable)? shouldEnableSound,
  }) {
    return cancelTimer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? startTimer,
    TResult Function()? cancelTimer,
    TResult Function(int duration, int remainingTime)? updateTimer,
    TResult Function(int duration, int remainingTime)? pauseTimer,
    TResult Function()? resumeTimer,
    TResult Function()? resetAfterSubmit,
    TResult Function(bool enable)? shouldEnableSound,
    required TResult orElse(),
  }) {
    if (cancelTimer != null) {
      return cancelTimer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_CancelTimer value) cancelTimer,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_PauseTimer value) pauseTimer,
    required TResult Function(_ResumeTimer value) resumeTimer,
    required TResult Function(_ResetAfterSubmit value) resetAfterSubmit,
    required TResult Function(_ShouldEnableSound value) shouldEnableSound,
  }) {
    return cancelTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_CancelTimer value)? cancelTimer,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_PauseTimer value)? pauseTimer,
    TResult? Function(_ResumeTimer value)? resumeTimer,
    TResult? Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult? Function(_ShouldEnableSound value)? shouldEnableSound,
  }) {
    return cancelTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_CancelTimer value)? cancelTimer,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_PauseTimer value)? pauseTimer,
    TResult Function(_ResumeTimer value)? resumeTimer,
    TResult Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult Function(_ShouldEnableSound value)? shouldEnableSound,
    required TResult orElse(),
  }) {
    if (cancelTimer != null) {
      return cancelTimer(this);
    }
    return orElse();
  }
}

abstract class _CancelTimer implements TimerEvent {
  const factory _CancelTimer() = _$CancelTimerImpl;
}

/// @nodoc
abstract class _$$UpdateTimerImplCopyWith<$Res> {
  factory _$$UpdateTimerImplCopyWith(
          _$UpdateTimerImpl value, $Res Function(_$UpdateTimerImpl) then) =
      __$$UpdateTimerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration, int remainingTime});
}

/// @nodoc
class __$$UpdateTimerImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$UpdateTimerImpl>
    implements _$$UpdateTimerImplCopyWith<$Res> {
  __$$UpdateTimerImplCopyWithImpl(
      _$UpdateTimerImpl _value, $Res Function(_$UpdateTimerImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? remainingTime = null,
  }) {
    return _then(_$UpdateTimerImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateTimerImpl implements _UpdateTimer {
  const _$UpdateTimerImpl(
      {required this.duration, required this.remainingTime});

  @override
  final int duration;
  @override
  final int remainingTime;

  @override
  String toString() {
    return 'TimerEvent.updateTimer(duration: $duration, remainingTime: $remainingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTimerImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, remainingTime);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTimerImplCopyWith<_$UpdateTimerImpl> get copyWith =>
      __$$UpdateTimerImplCopyWithImpl<_$UpdateTimerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) startTimer,
    required TResult Function() cancelTimer,
    required TResult Function(int duration, int remainingTime) updateTimer,
    required TResult Function(int duration, int remainingTime) pauseTimer,
    required TResult Function() resumeTimer,
    required TResult Function() resetAfterSubmit,
    required TResult Function(bool enable) shouldEnableSound,
  }) {
    return updateTimer(duration, remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? startTimer,
    TResult? Function()? cancelTimer,
    TResult? Function(int duration, int remainingTime)? updateTimer,
    TResult? Function(int duration, int remainingTime)? pauseTimer,
    TResult? Function()? resumeTimer,
    TResult? Function()? resetAfterSubmit,
    TResult? Function(bool enable)? shouldEnableSound,
  }) {
    return updateTimer?.call(duration, remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? startTimer,
    TResult Function()? cancelTimer,
    TResult Function(int duration, int remainingTime)? updateTimer,
    TResult Function(int duration, int remainingTime)? pauseTimer,
    TResult Function()? resumeTimer,
    TResult Function()? resetAfterSubmit,
    TResult Function(bool enable)? shouldEnableSound,
    required TResult orElse(),
  }) {
    if (updateTimer != null) {
      return updateTimer(duration, remainingTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_CancelTimer value) cancelTimer,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_PauseTimer value) pauseTimer,
    required TResult Function(_ResumeTimer value) resumeTimer,
    required TResult Function(_ResetAfterSubmit value) resetAfterSubmit,
    required TResult Function(_ShouldEnableSound value) shouldEnableSound,
  }) {
    return updateTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_CancelTimer value)? cancelTimer,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_PauseTimer value)? pauseTimer,
    TResult? Function(_ResumeTimer value)? resumeTimer,
    TResult? Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult? Function(_ShouldEnableSound value)? shouldEnableSound,
  }) {
    return updateTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_CancelTimer value)? cancelTimer,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_PauseTimer value)? pauseTimer,
    TResult Function(_ResumeTimer value)? resumeTimer,
    TResult Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult Function(_ShouldEnableSound value)? shouldEnableSound,
    required TResult orElse(),
  }) {
    if (updateTimer != null) {
      return updateTimer(this);
    }
    return orElse();
  }
}

abstract class _UpdateTimer implements TimerEvent {
  const factory _UpdateTimer(
      {required final int duration,
      required final int remainingTime}) = _$UpdateTimerImpl;

  int get duration;
  int get remainingTime;

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTimerImplCopyWith<_$UpdateTimerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PauseTimerImplCopyWith<$Res> {
  factory _$$PauseTimerImplCopyWith(
          _$PauseTimerImpl value, $Res Function(_$PauseTimerImpl) then) =
      __$$PauseTimerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration, int remainingTime});
}

/// @nodoc
class __$$PauseTimerImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$PauseTimerImpl>
    implements _$$PauseTimerImplCopyWith<$Res> {
  __$$PauseTimerImplCopyWithImpl(
      _$PauseTimerImpl _value, $Res Function(_$PauseTimerImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? remainingTime = null,
  }) {
    return _then(_$PauseTimerImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PauseTimerImpl implements _PauseTimer {
  const _$PauseTimerImpl({required this.duration, required this.remainingTime});

  @override
  final int duration;
  @override
  final int remainingTime;

  @override
  String toString() {
    return 'TimerEvent.pauseTimer(duration: $duration, remainingTime: $remainingTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PauseTimerImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration, remainingTime);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PauseTimerImplCopyWith<_$PauseTimerImpl> get copyWith =>
      __$$PauseTimerImplCopyWithImpl<_$PauseTimerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) startTimer,
    required TResult Function() cancelTimer,
    required TResult Function(int duration, int remainingTime) updateTimer,
    required TResult Function(int duration, int remainingTime) pauseTimer,
    required TResult Function() resumeTimer,
    required TResult Function() resetAfterSubmit,
    required TResult Function(bool enable) shouldEnableSound,
  }) {
    return pauseTimer(duration, remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? startTimer,
    TResult? Function()? cancelTimer,
    TResult? Function(int duration, int remainingTime)? updateTimer,
    TResult? Function(int duration, int remainingTime)? pauseTimer,
    TResult? Function()? resumeTimer,
    TResult? Function()? resetAfterSubmit,
    TResult? Function(bool enable)? shouldEnableSound,
  }) {
    return pauseTimer?.call(duration, remainingTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? startTimer,
    TResult Function()? cancelTimer,
    TResult Function(int duration, int remainingTime)? updateTimer,
    TResult Function(int duration, int remainingTime)? pauseTimer,
    TResult Function()? resumeTimer,
    TResult Function()? resetAfterSubmit,
    TResult Function(bool enable)? shouldEnableSound,
    required TResult orElse(),
  }) {
    if (pauseTimer != null) {
      return pauseTimer(duration, remainingTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_CancelTimer value) cancelTimer,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_PauseTimer value) pauseTimer,
    required TResult Function(_ResumeTimer value) resumeTimer,
    required TResult Function(_ResetAfterSubmit value) resetAfterSubmit,
    required TResult Function(_ShouldEnableSound value) shouldEnableSound,
  }) {
    return pauseTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_CancelTimer value)? cancelTimer,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_PauseTimer value)? pauseTimer,
    TResult? Function(_ResumeTimer value)? resumeTimer,
    TResult? Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult? Function(_ShouldEnableSound value)? shouldEnableSound,
  }) {
    return pauseTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_CancelTimer value)? cancelTimer,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_PauseTimer value)? pauseTimer,
    TResult Function(_ResumeTimer value)? resumeTimer,
    TResult Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult Function(_ShouldEnableSound value)? shouldEnableSound,
    required TResult orElse(),
  }) {
    if (pauseTimer != null) {
      return pauseTimer(this);
    }
    return orElse();
  }
}

abstract class _PauseTimer implements TimerEvent {
  const factory _PauseTimer(
      {required final int duration,
      required final int remainingTime}) = _$PauseTimerImpl;

  int get duration;
  int get remainingTime;

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PauseTimerImplCopyWith<_$PauseTimerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResumeTimerImplCopyWith<$Res> {
  factory _$$ResumeTimerImplCopyWith(
          _$ResumeTimerImpl value, $Res Function(_$ResumeTimerImpl) then) =
      __$$ResumeTimerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResumeTimerImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$ResumeTimerImpl>
    implements _$$ResumeTimerImplCopyWith<$Res> {
  __$$ResumeTimerImplCopyWithImpl(
      _$ResumeTimerImpl _value, $Res Function(_$ResumeTimerImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResumeTimerImpl implements _ResumeTimer {
  const _$ResumeTimerImpl();

  @override
  String toString() {
    return 'TimerEvent.resumeTimer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResumeTimerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) startTimer,
    required TResult Function() cancelTimer,
    required TResult Function(int duration, int remainingTime) updateTimer,
    required TResult Function(int duration, int remainingTime) pauseTimer,
    required TResult Function() resumeTimer,
    required TResult Function() resetAfterSubmit,
    required TResult Function(bool enable) shouldEnableSound,
  }) {
    return resumeTimer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? startTimer,
    TResult? Function()? cancelTimer,
    TResult? Function(int duration, int remainingTime)? updateTimer,
    TResult? Function(int duration, int remainingTime)? pauseTimer,
    TResult? Function()? resumeTimer,
    TResult? Function()? resetAfterSubmit,
    TResult? Function(bool enable)? shouldEnableSound,
  }) {
    return resumeTimer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? startTimer,
    TResult Function()? cancelTimer,
    TResult Function(int duration, int remainingTime)? updateTimer,
    TResult Function(int duration, int remainingTime)? pauseTimer,
    TResult Function()? resumeTimer,
    TResult Function()? resetAfterSubmit,
    TResult Function(bool enable)? shouldEnableSound,
    required TResult orElse(),
  }) {
    if (resumeTimer != null) {
      return resumeTimer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_CancelTimer value) cancelTimer,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_PauseTimer value) pauseTimer,
    required TResult Function(_ResumeTimer value) resumeTimer,
    required TResult Function(_ResetAfterSubmit value) resetAfterSubmit,
    required TResult Function(_ShouldEnableSound value) shouldEnableSound,
  }) {
    return resumeTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_CancelTimer value)? cancelTimer,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_PauseTimer value)? pauseTimer,
    TResult? Function(_ResumeTimer value)? resumeTimer,
    TResult? Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult? Function(_ShouldEnableSound value)? shouldEnableSound,
  }) {
    return resumeTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_CancelTimer value)? cancelTimer,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_PauseTimer value)? pauseTimer,
    TResult Function(_ResumeTimer value)? resumeTimer,
    TResult Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult Function(_ShouldEnableSound value)? shouldEnableSound,
    required TResult orElse(),
  }) {
    if (resumeTimer != null) {
      return resumeTimer(this);
    }
    return orElse();
  }
}

abstract class _ResumeTimer implements TimerEvent {
  const factory _ResumeTimer() = _$ResumeTimerImpl;
}

/// @nodoc
abstract class _$$ResetAfterSubmitImplCopyWith<$Res> {
  factory _$$ResetAfterSubmitImplCopyWith(_$ResetAfterSubmitImpl value,
          $Res Function(_$ResetAfterSubmitImpl) then) =
      __$$ResetAfterSubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetAfterSubmitImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$ResetAfterSubmitImpl>
    implements _$$ResetAfterSubmitImplCopyWith<$Res> {
  __$$ResetAfterSubmitImplCopyWithImpl(_$ResetAfterSubmitImpl _value,
      $Res Function(_$ResetAfterSubmitImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetAfterSubmitImpl implements _ResetAfterSubmit {
  const _$ResetAfterSubmitImpl();

  @override
  String toString() {
    return 'TimerEvent.resetAfterSubmit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetAfterSubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) startTimer,
    required TResult Function() cancelTimer,
    required TResult Function(int duration, int remainingTime) updateTimer,
    required TResult Function(int duration, int remainingTime) pauseTimer,
    required TResult Function() resumeTimer,
    required TResult Function() resetAfterSubmit,
    required TResult Function(bool enable) shouldEnableSound,
  }) {
    return resetAfterSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? startTimer,
    TResult? Function()? cancelTimer,
    TResult? Function(int duration, int remainingTime)? updateTimer,
    TResult? Function(int duration, int remainingTime)? pauseTimer,
    TResult? Function()? resumeTimer,
    TResult? Function()? resetAfterSubmit,
    TResult? Function(bool enable)? shouldEnableSound,
  }) {
    return resetAfterSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? startTimer,
    TResult Function()? cancelTimer,
    TResult Function(int duration, int remainingTime)? updateTimer,
    TResult Function(int duration, int remainingTime)? pauseTimer,
    TResult Function()? resumeTimer,
    TResult Function()? resetAfterSubmit,
    TResult Function(bool enable)? shouldEnableSound,
    required TResult orElse(),
  }) {
    if (resetAfterSubmit != null) {
      return resetAfterSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_CancelTimer value) cancelTimer,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_PauseTimer value) pauseTimer,
    required TResult Function(_ResumeTimer value) resumeTimer,
    required TResult Function(_ResetAfterSubmit value) resetAfterSubmit,
    required TResult Function(_ShouldEnableSound value) shouldEnableSound,
  }) {
    return resetAfterSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_CancelTimer value)? cancelTimer,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_PauseTimer value)? pauseTimer,
    TResult? Function(_ResumeTimer value)? resumeTimer,
    TResult? Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult? Function(_ShouldEnableSound value)? shouldEnableSound,
  }) {
    return resetAfterSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_CancelTimer value)? cancelTimer,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_PauseTimer value)? pauseTimer,
    TResult Function(_ResumeTimer value)? resumeTimer,
    TResult Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult Function(_ShouldEnableSound value)? shouldEnableSound,
    required TResult orElse(),
  }) {
    if (resetAfterSubmit != null) {
      return resetAfterSubmit(this);
    }
    return orElse();
  }
}

abstract class _ResetAfterSubmit implements TimerEvent {
  const factory _ResetAfterSubmit() = _$ResetAfterSubmitImpl;
}

/// @nodoc
abstract class _$$ShouldEnableSoundImplCopyWith<$Res> {
  factory _$$ShouldEnableSoundImplCopyWith(_$ShouldEnableSoundImpl value,
          $Res Function(_$ShouldEnableSoundImpl) then) =
      __$$ShouldEnableSoundImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool enable});
}

/// @nodoc
class __$$ShouldEnableSoundImplCopyWithImpl<$Res>
    extends _$TimerEventCopyWithImpl<$Res, _$ShouldEnableSoundImpl>
    implements _$$ShouldEnableSoundImplCopyWith<$Res> {
  __$$ShouldEnableSoundImplCopyWithImpl(_$ShouldEnableSoundImpl _value,
      $Res Function(_$ShouldEnableSoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
  }) {
    return _then(_$ShouldEnableSoundImpl(
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShouldEnableSoundImpl implements _ShouldEnableSound {
  const _$ShouldEnableSoundImpl({this.enable = false});

  @override
  @JsonKey()
  final bool enable;

  @override
  String toString() {
    return 'TimerEvent.shouldEnableSound(enable: $enable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShouldEnableSoundImpl &&
            (identical(other.enable, enable) || other.enable == enable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enable);

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShouldEnableSoundImplCopyWith<_$ShouldEnableSoundImpl> get copyWith =>
      __$$ShouldEnableSoundImplCopyWithImpl<_$ShouldEnableSoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) startTimer,
    required TResult Function() cancelTimer,
    required TResult Function(int duration, int remainingTime) updateTimer,
    required TResult Function(int duration, int remainingTime) pauseTimer,
    required TResult Function() resumeTimer,
    required TResult Function() resetAfterSubmit,
    required TResult Function(bool enable) shouldEnableSound,
  }) {
    return shouldEnableSound(enable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? startTimer,
    TResult? Function()? cancelTimer,
    TResult? Function(int duration, int remainingTime)? updateTimer,
    TResult? Function(int duration, int remainingTime)? pauseTimer,
    TResult? Function()? resumeTimer,
    TResult? Function()? resetAfterSubmit,
    TResult? Function(bool enable)? shouldEnableSound,
  }) {
    return shouldEnableSound?.call(enable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? startTimer,
    TResult Function()? cancelTimer,
    TResult Function(int duration, int remainingTime)? updateTimer,
    TResult Function(int duration, int remainingTime)? pauseTimer,
    TResult Function()? resumeTimer,
    TResult Function()? resetAfterSubmit,
    TResult Function(bool enable)? shouldEnableSound,
    required TResult orElse(),
  }) {
    if (shouldEnableSound != null) {
      return shouldEnableSound(enable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTimer value) startTimer,
    required TResult Function(_CancelTimer value) cancelTimer,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_PauseTimer value) pauseTimer,
    required TResult Function(_ResumeTimer value) resumeTimer,
    required TResult Function(_ResetAfterSubmit value) resetAfterSubmit,
    required TResult Function(_ShouldEnableSound value) shouldEnableSound,
  }) {
    return shouldEnableSound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTimer value)? startTimer,
    TResult? Function(_CancelTimer value)? cancelTimer,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_PauseTimer value)? pauseTimer,
    TResult? Function(_ResumeTimer value)? resumeTimer,
    TResult? Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult? Function(_ShouldEnableSound value)? shouldEnableSound,
  }) {
    return shouldEnableSound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTimer value)? startTimer,
    TResult Function(_CancelTimer value)? cancelTimer,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_PauseTimer value)? pauseTimer,
    TResult Function(_ResumeTimer value)? resumeTimer,
    TResult Function(_ResetAfterSubmit value)? resetAfterSubmit,
    TResult Function(_ShouldEnableSound value)? shouldEnableSound,
    required TResult orElse(),
  }) {
    if (shouldEnableSound != null) {
      return shouldEnableSound(this);
    }
    return orElse();
  }
}

abstract class _ShouldEnableSound implements TimerEvent {
  const factory _ShouldEnableSound({final bool enable}) =
      _$ShouldEnableSoundImpl;

  bool get enable;

  /// Create a copy of TimerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShouldEnableSoundImplCopyWith<_$ShouldEnableSoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimerState {
  TimerStatus get status => throw _privateConstructorUsedError;
  int get remainingTime => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  dynamic get enableSound => throw _privateConstructorUsedError;

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res, TimerState>;
  @useResult
  $Res call(
      {TimerStatus status,
      int remainingTime,
      double progress,
      dynamic enableSound});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res, $Val extends TimerState>
    implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? remainingTime = null,
    Object? progress = null,
    Object? enableSound = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TimerStatus,
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      enableSound: freezed == enableSound
          ? _value.enableSound
          : enableSound // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TimerStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TimerStatus status,
      int remainingTime,
      double progress,
      dynamic enableSound});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TimerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? remainingTime = null,
    Object? progress = null,
    Object? enableSound = freezed,
  }) {
    return _then(_$InitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TimerStatus,
      remainingTime: null == remainingTime
          ? _value.remainingTime
          : remainingTime // ignore: cast_nullable_to_non_nullable
              as int,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      enableSound: freezed == enableSound ? _value.enableSound! : enableSound,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(
      {this.status = TimerStatus.initial,
      this.remainingTime = 360,
      this.progress = 0,
      this.enableSound = false})
      : super._();

  @override
  @JsonKey()
  final TimerStatus status;
  @override
  @JsonKey()
  final int remainingTime;
  @override
  @JsonKey()
  final double progress;
  @override
  @JsonKey()
  final dynamic enableSound;

  @override
  String toString() {
    return 'TimerState(status: $status, remainingTime: $remainingTime, progress: $progress, enableSound: $enableSound)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.remainingTime, remainingTime) ||
                other.remainingTime == remainingTime) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            const DeepCollectionEquality()
                .equals(other.enableSound, enableSound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, remainingTime, progress,
      const DeepCollectionEquality().hash(enableSound));

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial extends TimerState {
  const factory _Initial(
      {final TimerStatus status,
      final int remainingTime,
      final double progress,
      final dynamic enableSound}) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  TimerStatus get status;
  @override
  int get remainingTime;
  @override
  double get progress;
  @override
  dynamic get enableSound;

  /// Create a copy of TimerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
