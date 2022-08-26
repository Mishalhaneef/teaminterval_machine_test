import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teaminterval_test/application/search/search_bloc.dart';
import 'package:teaminterval_test/presentation/homepage/widgets/search_widget.dart';
import 'package:teaminterval_test/presentation/product%20page/product_details_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Column(
          children: [
            const SizedBox(height: 50),
            SearchWidget(
              onChanged: (value) {
                if (value.isEmpty) {
                  return;
                }
                BlocProvider.of<SearchBloc>(context).add(
                  SearchProduct(productQuery: value),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
            decoration: const BoxDecoration(),
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.searchResultData.isEmpty) {
                  return const Center(child: CircularProgressIndicator());
                }
                return GridView.builder(
                  itemCount: state.searchResultData.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2.9 / 5,
                    crossAxisCount: 2,
                    crossAxisSpacing: 30.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    final productResult = state.searchResultData[index];
                    return productResult.image == null
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                width: 300,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(state
                                            .searchResultData[index].image!)),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              const SizedBox(height: 9),
                              Text(
                                state.searchResultData[index].title!,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'search results',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          );
                  },
                );
              },
            )),
      ),
    );
  }
}
