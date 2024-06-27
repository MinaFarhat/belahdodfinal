// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderproductsentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderProductsEntity _$OrderProductsEntityFromJson(Map<String, dynamic> json) =>
    OrderProductsEntity(
      (json['product_id'] as num).toInt(),
      (json['section_id'] as num).toInt(),
      json['product_name'] as String,
      json['first_image'] as String,
      (json['price'] as num).toInt(),
      (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$OrderProductsEntityToJson(
        OrderProductsEntity instance) =>
    <String, dynamic>{
      'product_id': instance.productsId,
      'section_id': instance.sectionId,
      'product_name': instance.productName,
      'first_image': instance.firstImage,
      'price': instance.price,
      'quantity': instance.quantity,
    };
