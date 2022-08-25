// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: "strIngredient1")
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "strDrinkThumb")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "strCategory")
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "strInstructions")
  String? get instructions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "strIngredient1") String? productName,
      @JsonKey(name: "strDrinkThumb") String? image,
      @JsonKey(name: "strCategory") String? category,
      @JsonKey(name: "strInstructions") String? instructions});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? productName = freezed,
    Object? image = freezed,
    Object? category = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_value.copyWith(
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "strIngredient1") String? productName,
      @JsonKey(name: "strDrinkThumb") String? image,
      @JsonKey(name: "strCategory") String? category,
      @JsonKey(name: "strInstructions") String? instructions});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, (v) => _then(v as _$_Product));

  @override
  _$_Product get _value => super._value as _$_Product;

  @override
  $Res call({
    Object? productName = freezed,
    Object? image = freezed,
    Object? category = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_$_Product(
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      instructions: instructions == freezed
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {@JsonKey(name: "strIngredient1") required this.productName,
      @JsonKey(name: "strDrinkThumb") required this.image,
      @JsonKey(name: "strCategory") required this.category,
      @JsonKey(name: "strInstructions") required this.instructions});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  @JsonKey(name: "strIngredient1")
  final String? productName;
  @override
  @JsonKey(name: "strDrinkThumb")
  final String? image;
  @override
  @JsonKey(name: "strCategory")
  final String? category;
  @override
  @JsonKey(name: "strInstructions")
  final String? instructions;

  @override
  String toString() {
    return 'Product(productName: $productName, image: $image, category: $category, instructions: $instructions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            const DeepCollectionEquality()
                .equals(other.productName, productName) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.instructions, instructions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(productName),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(instructions));

  @JsonKey(ignore: true)
  @override
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: "strIngredient1")
          required final String? productName,
      @JsonKey(name: "strDrinkThumb")
          required final String? image,
      @JsonKey(name: "strCategory")
          required final String? category,
      @JsonKey(name: "strInstructions")
          required final String? instructions}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  @JsonKey(name: "strIngredient1")
  String? get productName;
  @override
  @JsonKey(name: "strDrinkThumb")
  String? get image;
  @override
  @JsonKey(name: "strCategory")
  String? get category;
  @override
  @JsonKey(name: "strInstructions")
  String? get instructions;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
