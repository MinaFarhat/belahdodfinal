// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) =>
    ProductEntity(
      (json['id'] as num).toInt(),
      json['first_image'] as String,
    );

Map<String, dynamic> _$ProductEntityToJson(ProductEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_image': instance.image,
    };
