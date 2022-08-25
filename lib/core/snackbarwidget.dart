import 'package:flutter/material.dart';

snackBar(context, text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    behavior: SnackBarBehavior.floating,
    margin: EdgeInsets.all(10),
    content: Text(text),
    duration: Duration(seconds: 5),
  ));
}
