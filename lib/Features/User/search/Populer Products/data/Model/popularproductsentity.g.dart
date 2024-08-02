// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popularproductsentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularProductsEntity _$PopularProductsEntityFromJson(
        Map<String, dynamic> json) =>
    PopularProductsEntity(
      (json['data'] as List<dynamic>)
          .map((e) => PopularProductsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PopularProductsEntityToJson(
        PopularProductsEntity instance) =>
    <String, dynamic>{
      'data': instance.popularProducts,
    };

PopularProductsData _$PopularProductsDataFromJson(Map<String, dynamic> json) =>
    PopularProductsData(
      (json['product_id'] as num).toInt(),
      (json['section_id'] as num).toInt(),
      json['image'] as String,
    );

Map<String, dynamic> _$PopularProductsDataToJson(
        PopularProductsData instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'section_id': instance.sectionId,
      'image': instance.productImage,
    };
