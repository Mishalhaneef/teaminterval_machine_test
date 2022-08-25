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
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BlocBuilder<SearchBloc, SearchState>(
                          builder: (context, state) {
                            return Container(
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
                                      image: NetworkImage(state
                                          .searchResultData[index].image!)),
                                  borderRadius: BorderRadius.circular(20)),
                            );
                          },
                        ),
                        const SizedBox(height: 9),
                        BlocBuilder<SearchBloc, SearchState>(
                          builder: (context, state) {
                            return Text(
                              state.searchResultData[index].title!,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 10),
                        BlocBuilder<SearchBloc, SearchState>(
                          builder: (context, state) {
                            return const Text(
                              'search results',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            );
                          },
                        )
                      ],
                    );
                    ;
                  },
                );
              },
            )),
      ),
    );
  }
}
