// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'firebase_user_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StandFlowFirebaseUserTearOff {
  const _$StandFlowFirebaseUserTearOff();

  _User user(User user) {
    return _User(
      user,
    );
  }

  _LoggedOut loggedOut() {
    return _LoggedOut();
  }

  _Initial initial() {
    return _Initial();
  }
}

/// @nodoc
const $StandFlowFirebaseUser = _$StandFlowFirebaseUserTearOff();

/// @nodoc
mixin _$StandFlowFirebaseUser {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) user,
    required TResult Function() loggedOut,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? user,
    TResult Function()? loggedOut,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_User value) user,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_User value)? user,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StandFlowFirebaseUserCopyWith<$Res> {
  factory $StandFlowFirebaseUserCopyWith(StandFlowFirebaseUser value,
          $Res Function(StandFlowFirebaseUser) then) =
      _$StandFlowFirebaseUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$StandFlowFirebaseUserCopyWithImpl<$Res>
    implements $StandFlowFirebaseUserCopyWith<$Res> {
  _$StandFlowFirebaseUserCopyWithImpl(this._value, this._then);

  final StandFlowFirebaseUser _value;
  // ignore: unused_field
  final $Res Function(StandFlowFirebaseUser) _then;
}

/// @nodoc
abstract class _$UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class __$UserCopyWithImpl<$Res>
    extends _$StandFlowFirebaseUserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_User(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
class _$_User implements _User {
  _$_User(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'StandFlowFirebaseUser.user(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) user,
    required TResult Function() loggedOut,
    required TResult Function() initial,
  }) {
    return user(this.user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? user,
    TResult Function()? loggedOut,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this.user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_User value) user,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Initial value) initial,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_User value)? user,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class _User implements StandFlowFirebaseUser {
  factory _User(User user) = _$_User;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoggedOutCopyWith<$Res> {
  factory _$LoggedOutCopyWith(
          _LoggedOut value, $Res Function(_LoggedOut) then) =
      __$LoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoggedOutCopyWithImpl<$Res>
    extends _$StandFlowFirebaseUserCopyWithImpl<$Res>
    implements _$LoggedOutCopyWith<$Res> {
  __$LoggedOutCopyWithImpl(_LoggedOut _value, $Res Function(_LoggedOut) _then)
      : super(_value, (v) => _then(v as _LoggedOut));

  @override
  _LoggedOut get _value => super._value as _LoggedOut;
}

/// @nodoc
class _$_LoggedOut implements _LoggedOut {
  _$_LoggedOut();

  @override
  String toString() {
    return 'StandFlowFirebaseUser.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) user,
    required TResult Function() loggedOut,
    required TResult Function() initial,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? user,
    TResult Function()? loggedOut,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_User value) user,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Initial value) initial,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_User value)? user,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements StandFlowFirebaseUser {
  factory _LoggedOut() = _$_LoggedOut;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$StandFlowFirebaseUserCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  _$_Initial();

  @override
  String toString() {
    return 'StandFlowFirebaseUser.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) user,
    required TResult Function() loggedOut,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? user,
    TResult Function()? loggedOut,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_User value) user,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_User value)? user,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StandFlowFirebaseUser {
  factory _Initial() = _$_Initial;
}
