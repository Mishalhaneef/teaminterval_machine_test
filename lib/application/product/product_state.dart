part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required bool isFetching,
    required List<Product> products,
    required Option<Either<CommonFailures, List<Product>>>
        productFailureorSuccesOption,
  }) = _ProductState;

  factory ProductState.initial() {
    return const ProductState(
      isFetching: true,
      products: [],
      productFailureorSuccesOption: None(),
    );
  }
}
