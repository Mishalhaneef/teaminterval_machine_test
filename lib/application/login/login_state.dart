part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool obscureText,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(obscureText: true);
}
