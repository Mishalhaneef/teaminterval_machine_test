import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:teaminterval_test/core/apis/api_end_points.dart';
import 'package:teaminterval_test/core/apis/api_failures/api_failures.dart';
import 'package:teaminterval_test/domain/search/model/search_response/search_response.dart';
import 'package:teaminterval_test/domain/search/model/search_service.dart';

@LazySingleton(as: SearchService)
class SearchImplementation implements SearchService {
  @override
  Future<Either<CommonFailures, SearchResponse>> searchProduct(
      {required String drinkQuery}) async {
    try {
      final response = await Dio(BaseOptions()).get(
        ApiEndpoints.search,
        queryParameters: {'query': drinkQuery},
      );
      log(response.data.toString());
      // status code checking
      if (response.statusCode == 200 || response.statusCode == 201) {
        // fetching search result from json and converting to dart
        final searchResult = SearchResponse.fromJson(response.data);
        // log('$searchResult');
        return Right(searchResult);
      } else {
        return const Left(CommonFailures.serverFailures());
      }
    } catch (e) {
      log(e.toString());
      return const Left(CommonFailures.clientFailures());
    }
  }
}
