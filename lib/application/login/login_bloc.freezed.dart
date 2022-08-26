// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hidePassword,
    required TResult Function() showPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? hidePassword,
    TResult Function()? showPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hidePassword,
    TResult Function()? showPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HidePassword value) hidePassword,
    required TResult Function(ShowPassword value) showPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HidePassword value)? hidePassword,
    TResult Function(ShowPassword value)? showPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HidePassword value)? hidePassword,
    TResult Function(ShowPassword value)? showPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$HidePasswordCopyWith<$Res> {
  factory _$$HidePasswordCopyWith(
          _$HidePassword value, $Res Function(_$HidePassword) then) =
      __$$HidePasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HidePasswordCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$HidePasswordCopyWith<$Res> {
  __$$HidePasswordCopyWithImpl(
      _$HidePassword _value, $Res Function(_$HidePassword) _then)
      : super(_value, (v) => _then(v as _$HidePassword));

  @override
  _$HidePassword get _value => super._value as _$HidePassword;
}

/// @nodoc

class _$HidePassword implements HidePassword {
  const _$HidePassword();

  @override
  String toString() {
    return 'LoginEvent.hidePassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HidePassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hidePassword,
    required TResult Function() showPassword,
  }) {
    return hidePassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? hidePassword,
    TResult Function()? showPassword,
  }) {
    return hidePassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hidePassword,
    TResult Function()? showPassword,
    required TResult orElse(),
  }) {
    if (hidePassword != null) {
      return hidePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HidePassword value) hidePassword,
    required TResult Function(ShowPassword value) showPassword,
  }) {
    return hidePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HidePassword value)? hidePassword,
    TResult Function(ShowPassword value)? showPassword,
  }) {
    return hidePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HidePassword value)? hidePassword,
    TResult Function(ShowPassword value)? showPassword,
    required TResult orElse(),
  }) {
    if (hidePassword != null) {
      return hidePassword(this);
    }
    return orElse();
  }
}

abstract class HidePassword implements LoginEvent {
  const factory HidePassword() = _$HidePassword;
}

/// @nodoc
abstract class _$$ShowPasswordCopyWith<$Res> {
  factory _$$ShowPasswordCopyWith(
          _$ShowPassword value, $Res Function(_$ShowPassword) then) =
      __$$ShowPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowPasswordCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$ShowPasswordCopyWith<$Res> {
  __$$ShowPasswordCopyWithImpl(
      _$ShowPassword _value, $Res Function(_$ShowPassword) _then)
      : super(_value, (v) => _then(v as _$ShowPassword));

  @override
  _$ShowPassword get _value => super._value as _$ShowPassword;
}

/// @nodoc

class _$ShowPassword implements ShowPassword {
  const _$ShowPassword();

  @override
  String toString() {
    return 'LoginEvent.showPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() hidePassword,
    required TResult Function() showPassword,
  }) {
    return showPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? hidePassword,
    TResult Function()? showPassword,
  }) {
    return showPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? hidePassword,
    TResult Function()? showPassword,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HidePassword value) hidePassword,
    required TResult Function(ShowPassword value) showPassword,
  }) {
    return showPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HidePassword value)? hidePassword,
    TResult Function(ShowPassword value)? showPassword,
  }) {
    return showPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HidePassword value)? hidePassword,
    TResult Function(ShowPassword value)? showPassword,
    required TResult orElse(),
  }) {
    if (showPassword != null) {
      return showPassword(this);
    }
    return orElse();
  }
}

abstract class ShowPassword implements LoginEvent {
  const factory ShowPassword() = _$ShowPassword;
}

/// @nodoc
mixin _$LoginState {
  bool get obscureText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({bool obscureText});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? obscureText = freezed,
  }) {
    return _then(_value.copyWith(
      obscureText: obscureText == freezed
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  $Res call({bool obscureText});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;

  @override
  $Res call({
    Object? obscureText = freezed,
  }) {
    return _then(_$_LoginState(
      obscureText: obscureText == freezed
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState({required this.obscureText});

  @override
  final bool obscureText;

  @override
  String toString() {
    return 'LoginState(obscureText: $obscureText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality()
                .equals(other.obscureText, obscureText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(obscureText));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState({required final bool obscureText}) = _$_LoginState;

  @override
  bool get obscureText;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
