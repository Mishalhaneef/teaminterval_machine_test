import 'package:flutter/material.dart';
import 'package:teaminterval_test/core/snackbarwidget.dart';
import 'package:teaminterval_test/presentation/homepage/homepage.dart';

loginCheck(String username, String password, context) {
  username.isEmpty || password.isEmpty
      ? snackBar(context, 'Enter username and password')
      : username != password
          ? snackBar(context, 'password and username does not match')
          : Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const HomePage()),
              (Route<dynamic> route) => false,
            );
}
