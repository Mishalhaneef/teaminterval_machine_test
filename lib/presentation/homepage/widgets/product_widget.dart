import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teaminterval_test/application/product/product_bloc.dart';
import 'package:teaminterval_test/presentation/product%20page/product_details_screen.dart';

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
            // Hero widget is not working, working to fix this
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
                /// Product image
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
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
