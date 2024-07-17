// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productvisitorentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductVisitorEntity _$ProductVisitorEntityFromJson(
        Map<String, dynamic> json) =>
    ProductVisitorEntity(
      (json['id'] as num).toInt(),
      json['first_image'] as String,
    );

Map<String, dynamic> _$ProductVisitorEntityToJson(
        ProductVisitorEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_image': instance.image,
    };
