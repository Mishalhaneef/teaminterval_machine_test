import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:teaminterval_test/core/apis/api_end_points.dart';
import 'package:teaminterval_test/core/apis/api_failures/api_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:teaminterval_test/domain/homepage/homepage_services.dart';
import 'package:teaminterval_test/domain/homepage/models/product_model.dart';

@LazySingleton(as: ProductService)
class ProductImplementation implements ProductService {
  @override
  Future<Either<CommonFailures, List<Product>>> getProductsData() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndpoints.product);

      if (response.statusCode == 200 || response.statusCode == 201) {

      final productList =  ( response.data['drinks'] as List).map((e) {
        return Product.fromJson(e);
       }).toList();

        return Right(productList);
      } else {
        return const Left(CommonFailures.serverFailures());
      }
    } catch (e) {
      log('$e ss');
      return const Left(CommonFailures.clientFailures());
    }
  }
}
