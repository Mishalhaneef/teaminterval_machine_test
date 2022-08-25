// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/product/product_bloc.dart' as _i7;
import '../../application/search/search_bloc.dart' as _i8;
import '../../domain/homepage/homepage_services.dart' as _i3;
import '../../domain/search/model/search_service.dart' as _i5;
import '../../infrastructures/homepage/homepage_implementation.dart' as _i4;
import '../../infrastructures/search/search_implementation.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ProductService>(() => _i4.ProductImplementation());
  gh.lazySingleton<_i5.SearchService>(() => _i6.SearchImplementation());
  gh.factory<_i7.ProductBloc>(() => _i7.ProductBloc(get<_i3.ProductService>()));
  gh.factory<_i8.SearchBloc>(() =>
      _i8.SearchBloc(get<_i3.ProductService>(), get<_i5.SearchService>()));
  return get;
}
