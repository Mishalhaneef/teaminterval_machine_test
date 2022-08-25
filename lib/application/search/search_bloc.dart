import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teaminterval_test/core/apis/api_failures/api_failures.dart';
import 'package:teaminterval_test/domain/homepage/homepage_services.dart';
import 'package:teaminterval_test/domain/homepage/models/product_model.dart';
import 'package:teaminterval_test/domain/search/model/search_response/search_response.dart';
import 'package:teaminterval_test/domain/search/model/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ProductService _productService;
  final SearchService _searchService;
  SearchBloc(this._productService, this._searchService)
      : super(SearchState.initial()) {
    // idle state
    on<Initialize>((event, emit) async {
      if (state.waitinglist.isNotEmpty) {
        emit(state);
        return;
      }
      emit(
        const SearchState(
          searchResultData: [],
          waitinglist: [],
          isLoading: true,
          isError: false,
        ),
      );
      // get trending
      final _result = await _productService.getProductsData();

      final _state = _result.fold(
        /// fold data sending to the function based on the fold value
        (CommonFailures f) {
          return const SearchState(
            searchResultData: [],
            waitinglist: [],
            isLoading: false,
            isError: true,
          );
        },
        (List<Product> list) {
          return SearchState(
            searchResultData: [],
            waitinglist: list,
            isLoading: false,
            isError: false,
          );
        },
      );

      emit(_state);
    });

    // search result state
    on<SearchProduct>((event, emit) async {
      // call search movie API
      // show the api result to UI
      log('Searching for ${event.productQuery}');
      
      emit(
        const SearchState(
          searchResultData: [],
          waitinglist: [],
          isLoading: true,
          isError: false,
        ),
      );
      final _result =
          await _searchService.searchProduct(drinkQuery: event.productQuery);
      final _state = _result.fold(
        (CommonFailures failures) {
          return const SearchState(
            searchResultData: [],
            waitinglist: [],
            isLoading: false,
            isError: true,
          );
        },
        (SearchResponse response) {
          return SearchState(
            searchResultData: response.results,
            waitinglist: [],
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(_state);
    });
  }
}
