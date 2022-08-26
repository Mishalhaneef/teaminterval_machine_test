part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required List<SearchResultData> searchResultData,
    required List<Product> waitinglist,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        searchResultData: [],
        waitinglist: [],
      );
}
