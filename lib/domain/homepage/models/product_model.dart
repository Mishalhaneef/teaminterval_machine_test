import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "strIngredient1") required String? productName,
    @JsonKey(name: "strDrinkThumb") required String? image,
    @JsonKey(name: "strCategory") required String? category,
    @JsonKey(name: "strInstructions") required String? instructions,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
