import 'package:flutter/material.dart';
import 'package:teaminterval_test/core/constants.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    Key? key,
    required this.hint,
    required this.controller,
    this.password = false,
  }) : super(key: key);

  final String hint;
  final TextEditingController controller;
  final bool password;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool obscureText = false;
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
          child: TextField(
            obscureText: obscureText,
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: const TextStyle(color: Colors.grey),
              suffixIcon: widget.password == true
                  ? IconButton(
                      icon: const Icon(
                        Icons.remove_red_eye,
                      ),
                      onPressed: () {
                        obscureText == false ?
                        setState(() {
                          obscureText = true;
                        })
                        : setState(() {
                          obscureText = false;
                        });
                      },
                    )
                  : null,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
