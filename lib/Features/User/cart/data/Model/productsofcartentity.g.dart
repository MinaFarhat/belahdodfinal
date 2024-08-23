// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productsofcartentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsofCartEntity _$ProductsofCartEntityFromJson(
        Map<String, dynamic> json) =>
    ProductsofCartEntity(
      (json['product_id'] as num).toInt(),
      (json['section_id'] as num).toInt(),
      json['name'] as String,
      (json['price'] as num).toInt(),
      (json['quantity'] as num).toInt(),
      json['image'] as String?,
    );

Map<String, dynamic> _$ProductsofCartEntityToJson(
        ProductsofCartEntity instance) =>
    <String, dynamic>{
      'product_id': instance.id,
      'section_id': instance.sectionId,
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'image': instance.image,
    };
