// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      productName: json['strIngredient1'] as String?,
      image: json['strDrinkThumb'] as String?,
      category: json['strCategory'] as String?,
      instructions: json['strInstructions'] as String?,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'strIngredient1': instance.productName,
      'strDrinkThumb': instance.image,
      'strCategory': instance.category,
      'strInstructions': instance.instructions,
    };
