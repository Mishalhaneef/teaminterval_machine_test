// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String productQuery) searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String productQuery)? searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String productQuery)? searchProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchProduct value) searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchProduct value)? searchProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$$InitializeCopyWith<$Res> {
  factory _$$InitializeCopyWith(
          _$Initialize value, $Res Function(_$Initialize) then) =
      __$$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, (v) => _then(v as _$Initialize));

  @override
  _$Initialize get _value => super._value as _$Initialize;
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'SearchEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String productQuery) searchProduct,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String productQuery)? searchProduct,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String productQuery)? searchProduct,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchProduct value) searchProduct,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchProduct value)? searchProduct,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements SearchEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$SearchProductCopyWith<$Res> {
  factory _$$SearchProductCopyWith(
          _$SearchProduct value, $Res Function(_$SearchProduct) then) =
      __$$SearchProductCopyWithImpl<$Res>;
  $Res call({String productQuery});
}

/// @nodoc
class __$$SearchProductCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$SearchProductCopyWith<$Res> {
  __$$SearchProductCopyWithImpl(
      _$SearchProduct _value, $Res Function(_$SearchProduct) _then)
      : super(_value, (v) => _then(v as _$SearchProduct));

  @override
  _$SearchProduct get _value => super._value as _$SearchProduct;

  @override
  $Res call({
    Object? productQuery = freezed,
  }) {
    return _then(_$SearchProduct(
      productQuery: productQuery == freezed
          ? _value.productQuery
          : productQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProduct implements SearchProduct {
  const _$SearchProduct({required this.productQuery});

  @override
  final String productQuery;

  @override
  String toString() {
    return 'SearchEvent.searchProduct(productQuery: $productQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProduct &&
            const DeepCollectionEquality()
                .equals(other.productQuery, productQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(productQuery));

  @JsonKey(ignore: true)
  @override
  _$$SearchProductCopyWith<_$SearchProduct> get copyWith =>
      __$$SearchProductCopyWithImpl<_$SearchProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String productQuery) searchProduct,
  }) {
    return searchProduct(productQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String productQuery)? searchProduct,
  }) {
    return searchProduct?.call(productQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String productQuery)? searchProduct,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(productQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchProduct value) searchProduct,
  }) {
    return searchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchProduct value)? searchProduct,
  }) {
    return searchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchProduct value)? searchProduct,
    required TResult orElse(),
  }) {
    if (searchProduct != null) {
      return searchProduct(this);
    }
    return orElse();
  }
}

abstract class SearchProduct implements SearchEvent {
  const factory SearchProduct({required final String productQuery}) =
      _$SearchProduct;

  String get productQuery;
  @JsonKey(ignore: true)
  _$$SearchProductCopyWith<_$SearchProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  List<SearchResultData> get searchResultData =>
      throw _privateConstructorUsedError;
  List<Product> get waitinglist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {List<SearchResultData> searchResultData, List<Product> waitinglist});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? searchResultData = freezed,
    Object? waitinglist = freezed,
  }) {
    return _then(_value.copyWith(
      searchResultData: searchResultData == freezed
          ? _value.searchResultData
          : searchResultData // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      waitinglist: waitinglist == freezed
          ? _value.waitinglist
          : waitinglist // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<SearchResultData> searchResultData, List<Product> waitinglist});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, (v) => _then(v as _$_SearchState));

  @override
  _$_SearchState get _value => super._value as _$_SearchState;

  @override
  $Res call({
    Object? searchResultData = freezed,
    Object? waitinglist = freezed,
  }) {
    return _then(_$_SearchState(
      searchResultData: searchResultData == freezed
          ? _value._searchResultData
          : searchResultData // ignore: cast_nullable_to_non_nullable
              as List<SearchResultData>,
      waitinglist: waitinglist == freezed
          ? _value._waitinglist
          : waitinglist // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required final List<SearchResultData> searchResultData,
      required final List<Product> waitinglist})
      : _searchResultData = searchResultData,
        _waitinglist = waitinglist;

  final List<SearchResultData> _searchResultData;
  @override
  List<SearchResultData> get searchResultData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultData);
  }

  final List<Product> _waitinglist;
  @override
  List<Product> get waitinglist {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waitinglist);
  }

  @override
  String toString() {
    return 'SearchState(searchResultData: $searchResultData, waitinglist: $waitinglist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality()
                .equals(other._searchResultData, _searchResultData) &&
            const DeepCollectionEquality()
                .equals(other._waitinglist, _waitinglist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchResultData),
      const DeepCollectionEquality().hash(_waitinglist));

  @JsonKey(ignore: true)
  @override
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final List<SearchResultData> searchResultData,
      required final List<Product> waitinglist}) = _$_SearchState;

  @override
  List<SearchResultData> get searchResultData;
  @override
  List<Product> get waitinglist;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
