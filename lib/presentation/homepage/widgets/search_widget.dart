import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teaminterval_test/core/constants.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    this.onTap,
    this.onChanged,
  }) : super(key: key);

  final VoidCallback? onTap;
  final dynamic onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 28.0, left: 28.0),
      child: CupertinoSearchTextField(
        onTap: onTap,
        onChanged: onChanged,
        backgroundColor: ThemeColors.searchBarColor,
        prefixIcon: const Icon(
          CupertinoIcons.search,
          color: Colors.grey,
        ),
        suffixIcon: const Icon(
          CupertinoIcons.xmark_circle_fill,
          color: Colors.grey,
        ),
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
