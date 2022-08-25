import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teaminterval_test/core/apis/api_failures/api_failures.dart';
import 'package:teaminterval_test/domain/homepage/homepage_services.dart';

import '../../domain/homepage/models/product_model.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductService _productRepo;

  ProductBloc(this._productRepo) : super(ProductState.initial()) {
    on<_GetProducts>((event, emit) async {
      if (state.products.isNotEmpty) {
        emit(state);
        return;
      }

      emit(state.copyWith(
        isFetching: true,
        productFailureorSuccesOption: none(),
      ));

      final Either<CommonFailures, List<Product>> productOption =
          await _productRepo.getProductsData();
log(productOption.toString());
      emit(
        productOption.fold(
          (failure) {
            return state.copyWith(
                isFetching: false,
                productFailureorSuccesOption: some(Left(failure)));
          },
          (succes) {
            return state.copyWith(
                isFetching: false,
                products: succes,
                productFailureorSuccesOption: some(Right(succes)));
          },
        ),
      );
    });
  }
}
