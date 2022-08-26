import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<HidePassword>((event, emit) {
      return emit(state.copyWith(obscureText: true));
    });

    on<ShowPassword>((event, emit) {
      return emit(state.copyWith(obscureText: false));
    });
  }
}
