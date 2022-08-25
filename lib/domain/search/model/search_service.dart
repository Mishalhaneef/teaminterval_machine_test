import 'package:dartz/dartz.dart';
import 'package:teaminterval_test/core/apis/api_failures/api_failures.dart';
import 'package:teaminterval_test/domain/search/model/search_response/search_response.dart';

abstract class SearchService {
  Future<Either<CommonFailures, SearchResponse>> searchProduct({
    required String drinkQuery,
  });
}
