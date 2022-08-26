import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teaminterval_test/application/product/product_bloc.dart';
import 'package:teaminterval_test/application/search/search_bloc.dart';
import 'package:teaminterval_test/core/constants.dart';
import 'package:teaminterval_test/presentation/homepage/widgets/product_widget.dart';
import 'package:teaminterval_test/presentation/homepage/widgets/search_widget.dart';
import 'package:teaminterval_test/presentation/search/search_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timestamp) {
      BlocProvider.of<ProductBloc>(context)
          .add(const ProductEvent.getProducts());
    });
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Column(
            children: [
              const SizedBox(height: 50),
              // when the search bar tapped it'll redirect to search 
              // screen page and user can search there
              SearchWidget(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SearchScreen()),
                ),
              )
            ],
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
                decoration: const BoxDecoration(),
                child: BlocBuilder<SearchBloc, SearchState>(
                    builder: (context, state) {
                  // if (state.products.isEmpty) {
                  //   return const Center(child: CircularProgressIndicator());
                  // }
                  return BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) {
                      // if product is empty then it'll show circular indicator
                      if (state.products.isEmpty) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      return GridView.builder(
                        itemCount: state.products.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.9 / 5,
                          crossAxisCount: 2,
                          crossAxisSpacing: 30.0,
                          mainAxisSpacing: 10.0,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          // product listing widget
                          return ProductCard(index: index);
                        },
                      );
                    },
                  );
                }))));
  }
}
