import 'package:dartz/dartz.dart';
import 'package:teaminterval_test/core/apis/api_failures/api_failures.dart';
import 'package:teaminterval_test/domain/homepage/models/product_model.dart';

abstract class ProductService {
   Future<Either<CommonFailures, List<Product>>> getProductsData();
}
