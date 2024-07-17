// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stationeryvisitorentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StationeryVisitorEntity _$StationeryVisitorEntityFromJson(
        Map<String, dynamic> json) =>
    StationeryVisitorEntity(
      json['name'] as String,
      json['barcode'] as String,
      json['description'] as String,
      (json['price'] as num).toInt(),
      (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      json['stationery_goals'] as String,
      json['stationery_materials'] as String,
      json['stationery_manufacturer'] as String,
      json['stationery_specifications'] as String,
      json['section_name'] as String,
      (json['like_count'] as num).toInt(),
      json['average_rating'] as String,
    );

Map<String, dynamic> _$StationeryVisitorEntityToJson(
        StationeryVisitorEntity instance) =>
    <String, dynamic>{
      'name': instance.title,
      'barcode': instance.barcode,
      'description': instance.subTitle,
      'price': instance.price,
      'images': instance.images,
      'stationery_goals': instance.gameObjectives,
      'stationery_materials': instance.materials,
      'stationery_manufacturer': instance.publisher,
      'stationery_specifications': instance.specifications,
      'section_name': instance.sectionName,
      'like_count': instance.likeCount,
      'average_rating': instance.averageRating,
    };
