part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.hidePassword() = HidePassword;
  const factory LoginEvent.showPassword() = ShowPassword;
}