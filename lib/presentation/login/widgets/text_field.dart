import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teaminterval_test/application/login/login_bloc.dart';
import 'package:teaminterval_test/core/constants.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.hint,
    required this.controller,
    this.password = false,
  }) : super(key: key);

  final String hint;
  final TextEditingController controller;
  final bool password;

  final bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 60,
        left: 60,
      ),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: ThemeColors.searchBarColor,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding:
              const EdgeInsets.only(right: 10, left: 30, top: 0, bottom: 3),
          child: BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return TextField(
                obscureText: state.obscureText,
                controller: controller,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: password == true
                      ? BlocBuilder<LoginBloc, LoginState>(
                          builder: (context, state) {
                            return IconButton(
                              icon: const Icon(
                                Icons.remove_red_eye,
                              ),
                              onPressed: () {
                                state.obscureText == true
                                    ? context
                                        .read<LoginBloc>()
                                        .add(const ShowPassword())
                                    : context
                                        .read<LoginBloc>()
                                        .add(const HidePassword());
                              },
                            );
                          },
                        )
                      : null,
                  border: InputBorder.none,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
