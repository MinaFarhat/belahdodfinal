// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getproductsmainsection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductsMainSectionEntity _$GetProductsMainSectionEntityFromJson(
        Map<String, dynamic> json) =>
    GetProductsMainSectionEntity(
      json['success'] as bool,
      json['message'] as String,
      (json['data'] as List<dynamic>)
          .map((e) =>
              GetProductsMainSectionData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetProductsMainSectionEntityToJson(
        GetProductsMainSectionEntity instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.productsMainSection,
    };

GetProductsMainSectionData _$GetProductsMainSectionDataFromJson(
        Map<String, dynamic> json) =>
    GetProductsMainSectionData(
      (json['id'] as num).toInt(),
      (json['section'] as num).toInt(),
      json['name'] as String,
      json['first_image'] as String,
    );

Map<String, dynamic> _$GetProductsMainSectionDataToJson(
        GetProductsMainSectionData instance) =>
    <String, dynamic>{
      'id': instance.productId,
      'section': instance.sectionId,
      'name': instance.productName,
      'first_image': instance.productImage,
    };
