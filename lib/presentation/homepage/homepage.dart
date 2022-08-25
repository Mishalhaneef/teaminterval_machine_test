import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teaminterval_test/application/product/product_bloc.dart';
import 'package:teaminterval_test/presentation/homepage/widgets/search_widget.dart';
import 'package:teaminterval_test/presentation/product%20page/product_details_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    WidgetsBinding.instance.addPostFrameCallback((timestamp) {
      BlocProvider.of<ProductBloc>(context)
          .add(const ProductEvent.getProducts());
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Column(
          children: const [
            SizedBox(height: 50),
            SearchWidget(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
            decoration: const BoxDecoration(),
            child: BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state.products.isEmpty) {
                  return const Center(child: CircularProgressIndicator());
                }
                return GridView.builder(
                  itemCount: state.products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2.9 / 5,
                    crossAxisCount: 2,
                    crossAxisSpacing: 30.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return ProductCard(index: index);
                  },
                );
              },
            )),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return Hero(
              tag: 'dash',
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => ProductDetail(
                              instructions: state.products[index].instructions,
                              image: state.products[index].image,
                              name: state.products[index].productName,
                            )),
                  );
                },
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      //       boxShadow: const [
                      //   BoxShadow(
                      //     color: Color.fromARGB(255, 122, 122, 122),
                      //     offset: Offset(
                      //       0,
                      //       0,
                      //     ),
                      //     blurRadius: 5.0,
                      //     spreadRadius: 0,
                      //   ),
                      // ],
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(state.products[index].image!)),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 9),
        BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return Text(
              state.products[index].productName!,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
        const SizedBox(height: 10),
        BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return Text(
              state.products[index].category!,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey),
            );
          },
        )
      ],
    );
  }
}


