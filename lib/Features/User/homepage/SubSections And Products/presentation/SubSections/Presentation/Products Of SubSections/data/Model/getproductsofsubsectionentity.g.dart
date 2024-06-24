// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getproductsofsubsectionentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProductsofSubSectionEntity _$GetProductsofSubSectionEntityFromJson(
        Map<String, dynamic> json) =>
    GetProductsofSubSectionEntity(
      (json['data'] as List<dynamic>)
          .map((e) =>
              GetProductsofSubSectionData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetProductsofSubSectionEntityToJson(
        GetProductsofSubSectionEntity instance) =>
    <String, dynamic>{
      'data': instance.productsofsubsection,
    };

GetProductsofSubSectionData _$GetProductsofSubSectionDataFromJson(
        Map<String, dynamic> json) =>
    GetProductsofSubSectionData(
      (json['id'] as num).toInt(),
      json['name'] as String,
      json['first_image'] as String,
    );

Map<String, dynamic> _$GetProductsofSubSectionDataToJson(
        GetProductsofSubSectionData instance) =>
    <String, dynamic>{
      'id': instance.productsId,
      'name': instance.name,
      'first_image': instance.image,
    };
