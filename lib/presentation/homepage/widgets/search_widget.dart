import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teaminterval_test/application/search/search_bloc.dart';
import 'package:teaminterval_test/core/constants.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: Container(
        height: 43,
        width: double.infinity,
        decoration: BoxDecoration(
            color: ThemeColors.searchBarColor,
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding:
              const EdgeInsets.only(right: 10, left: 30, top: 0, bottom: 3),
          child: TextField(
            // controller: _controller,
            onChanged: (value) {
              if (value.isEmpty) {
                return;
              }
                BlocProvider.of<SearchBloc>(context).add(
                  SearchProduct(productQuery: value),
                );
            },
            decoration: const InputDecoration(
              hintText: 'Search Here',
              hintStyle: TextStyle(color: Colors.grey),
              // suffixIcon:
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
