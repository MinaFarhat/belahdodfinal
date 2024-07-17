// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basevisitorentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseVisitorEntity _$BaseVisitorEntityFromJson(Map<String, dynamic> json) =>
    BaseVisitorEntity(
      json['name'] as String,
      json['barcode'] as String,
      json['description'] as String,
      (json['price'] as num).toInt(),
      (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      json['section_name'] as String,
      (json['like_count'] as num).toInt(),
      json['average_rating'] as String,
    );

Map<String, dynamic> _$BaseVisitorEntityToJson(BaseVisitorEntity instance) =>
    <String, dynamic>{
      'name': instance.title,
      'barcode': instance.barcode,
      'description': instance.subTitle,
      'price': instance.price,
      'images': instance.images,
      'section_name': instance.sectionName,
      'like_count': instance.likeCount,
      'average_rating': instance.averageRating,
    };
