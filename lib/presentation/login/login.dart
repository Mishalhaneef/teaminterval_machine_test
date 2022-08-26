import 'package:flutter/material.dart';
import 'package:teaminterval_test/core/constants.dart';
import 'package:teaminterval_test/presentation/login/widgets/text_field.dart';

import 'widgets/logincheck.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: ThemeColors.appThemeColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 250),
            TextFieldWidget(
              hint: 'username',
              controller: usernameController,
            ),
            const SizedBox(height: 25),
            TextFieldWidget(
              hint: 'password',
              controller: passwordController,
              password: true,
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                //  if the username and password isn't same user can't login in
                loginCheck(
                  usernameController.text,
                  passwordController.text,
                  context,
                );
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
