// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity entity, UserStatus successStatus)
        saveUserData,
    required TResult Function() getUserData,
    required TResult Function() userLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity entity, UserStatus successStatus)?
        saveUserData,
    TResult? Function()? getUserData,
    TResult? Function()? userLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity entity, UserStatus successStatus)? saveUserData,
    TResult Function()? getUserData,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SaveUserData value) saveUserData,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_UserLogout value) userLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SaveUserData value)? saveUserData,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_UserLogout value)? userLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SaveUserData value)? saveUserData,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_UserLogout value)? userLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity entity, UserStatus successStatus)
        saveUserData,
    required TResult Function() getUserData,
    required TResult Function() userLogout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity entity, UserStatus successStatus)?
        saveUserData,
    TResult? Function()? getUserData,
    TResult? Function()? userLogout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity entity, UserStatus successStatus)? saveUserData,
    TResult Function()? getUserData,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SaveUserData value) saveUserData,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_UserLogout value) userLogout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SaveUserData value)? saveUserData,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_UserLogout value)? userLogout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SaveUserData value)? saveUserData,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_UserLogout value)? userLogout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UserEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SaveUserDataImplCopyWith<$Res> {
  factory _$$SaveUserDataImplCopyWith(
          _$SaveUserDataImpl value, $Res Function(_$SaveUserDataImpl) then) =
      __$$SaveUserDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity entity, UserStatus successStatus});

  $UserEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$SaveUserDataImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SaveUserDataImpl>
    implements _$$SaveUserDataImplCopyWith<$Res> {
  __$$SaveUserDataImplCopyWithImpl(
      _$SaveUserDataImpl _value, $Res Function(_$SaveUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = null,
    Object? successStatus = null,
  }) {
    return _then(_$SaveUserDataImpl(
      null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      null == successStatus
          ? _value.successStatus
          : successStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
    ));
  }

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get entity {
    return $UserEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$SaveUserDataImpl implements _SaveUserData {
  const _$SaveUserDataImpl(this.entity,
      [this.successStatus = UserStatus.saved]);

  @override
  final UserEntity entity;
  @override
  @JsonKey()
  final UserStatus successStatus;

  @override
  String toString() {
    return 'UserEvent.saveUserData(entity: $entity, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveUserDataImpl &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.successStatus, successStatus) ||
                other.successStatus == successStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entity, successStatus);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveUserDataImplCopyWith<_$SaveUserDataImpl> get copyWith =>
      __$$SaveUserDataImplCopyWithImpl<_$SaveUserDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity entity, UserStatus successStatus)
        saveUserData,
    required TResult Function() getUserData,
    required TResult Function() userLogout,
  }) {
    return saveUserData(entity, successStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity entity, UserStatus successStatus)?
        saveUserData,
    TResult? Function()? getUserData,
    TResult? Function()? userLogout,
  }) {
    return saveUserData?.call(entity, successStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity entity, UserStatus successStatus)? saveUserData,
    TResult Function()? getUserData,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) {
    if (saveUserData != null) {
      return saveUserData(entity, successStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SaveUserData value) saveUserData,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_UserLogout value) userLogout,
  }) {
    return saveUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SaveUserData value)? saveUserData,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_UserLogout value)? userLogout,
  }) {
    return saveUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SaveUserData value)? saveUserData,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_UserLogout value)? userLogout,
    required TResult orElse(),
  }) {
    if (saveUserData != null) {
      return saveUserData(this);
    }
    return orElse();
  }
}

abstract class _SaveUserData implements UserEvent {
  const factory _SaveUserData(final UserEntity entity,
      [final UserStatus successStatus]) = _$SaveUserDataImpl;

  UserEntity get entity;
  UserStatus get successStatus;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveUserDataImplCopyWith<_$SaveUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserDataImplCopyWith<$Res> {
  factory _$$GetUserDataImplCopyWith(
          _$GetUserDataImpl value, $Res Function(_$GetUserDataImpl) then) =
      __$$GetUserDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserDataImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserDataImpl>
    implements _$$GetUserDataImplCopyWith<$Res> {
  __$$GetUserDataImplCopyWithImpl(
      _$GetUserDataImpl _value, $Res Function(_$GetUserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserDataImpl implements _GetUserData {
  const _$GetUserDataImpl();

  @override
  String toString() {
    return 'UserEvent.getUserData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity entity, UserStatus successStatus)
        saveUserData,
    required TResult Function() getUserData,
    required TResult Function() userLogout,
  }) {
    return getUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity entity, UserStatus successStatus)?
        saveUserData,
    TResult? Function()? getUserData,
    TResult? Function()? userLogout,
  }) {
    return getUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity entity, UserStatus successStatus)? saveUserData,
    TResult Function()? getUserData,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SaveUserData value) saveUserData,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_UserLogout value) userLogout,
  }) {
    return getUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SaveUserData value)? saveUserData,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_UserLogout value)? userLogout,
  }) {
    return getUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SaveUserData value)? saveUserData,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_UserLogout value)? userLogout,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(this);
    }
    return orElse();
  }
}

abstract class _GetUserData implements UserEvent {
  const factory _GetUserData() = _$GetUserDataImpl;
}

/// @nodoc
abstract class _$$UserLogoutImplCopyWith<$Res> {
  factory _$$UserLogoutImplCopyWith(
          _$UserLogoutImpl value, $Res Function(_$UserLogoutImpl) then) =
      __$$UserLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLogoutImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserLogoutImpl>
    implements _$$UserLogoutImplCopyWith<$Res> {
  __$$UserLogoutImplCopyWithImpl(
      _$UserLogoutImpl _value, $Res Function(_$UserLogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserLogoutImpl implements _UserLogout {
  const _$UserLogoutImpl();

  @override
  String toString() {
    return 'UserEvent.userLogout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserEntity entity, UserStatus successStatus)
        saveUserData,
    required TResult Function() getUserData,
    required TResult Function() userLogout,
  }) {
    return userLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UserEntity entity, UserStatus successStatus)?
        saveUserData,
    TResult? Function()? getUserData,
    TResult? Function()? userLogout,
  }) {
    return userLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserEntity entity, UserStatus successStatus)? saveUserData,
    TResult Function()? getUserData,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) {
    if (userLogout != null) {
      return userLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SaveUserData value) saveUserData,
    required TResult Function(_GetUserData value) getUserData,
    required TResult Function(_UserLogout value) userLogout,
  }) {
    return userLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SaveUserData value)? saveUserData,
    TResult? Function(_GetUserData value)? getUserData,
    TResult? Function(_UserLogout value)? userLogout,
  }) {
    return userLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SaveUserData value)? saveUserData,
    TResult Function(_GetUserData value)? getUserData,
    TResult Function(_UserLogout value)? userLogout,
    required TResult orElse(),
  }) {
    if (userLogout != null) {
      return userLogout(this);
    }
    return orElse();
  }
}

abstract class _UserLogout implements UserEvent {
  const factory _UserLogout() = _$UserLogoutImpl;
}

/// @nodoc
mixin _$UserState {
  UserStatus get status => throw _privateConstructorUsedError;
  UserEntity? get user => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({UserStatus status, UserEntity? user, String? errorMessage});

  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserStatus status, UserEntity? user, String? errorMessage});

  @override
  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$InitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.status = UserStatus.inital, this.user, this.errorMessage});

  @override
  @JsonKey()
  final UserStatus status;
  @override
  final UserEntity? user;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'UserState(status: $status, user: $user, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, user, errorMessage);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements UserState {
  const factory _Initial(
      {final UserStatus status,
      final UserEntity? user,
      final String? errorMessage}) = _$InitialImpl;

  @override
  UserStatus get status;
  @override
  UserEntity? get user;
  @override
  String? get errorMessage;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
