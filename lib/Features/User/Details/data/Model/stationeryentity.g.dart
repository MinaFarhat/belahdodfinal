// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stationeryentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StationeryEntity _$StationeryEntityFromJson(Map<String, dynamic> json) =>
    StationeryEntity(
      json['name'] as String,
      json['barcode'] as String,
      json['description'] as String,
      (json['price'] as num).toInt(),
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['stationery_goals'] as String,
      json['stationery_materials'] as String,
      json['stationery_manufacturer'] as String,
      json['stationery_specifications'] as String,
      json['section_name'] as String,
      json['is_favorite'] as bool,
      json['is_liked'] as bool,
      json['is_disliked'] as bool,
      (json['like_count'] as num).toInt(),
      (json['user_rating'] as num).toInt(),
      json['average_rating'] as String,
    );

Map<String, dynamic> _$StationeryEntityToJson(StationeryEntity instance) =>
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
      'is_favorite': instance.isFavorite,
      'is_liked': instance.isLiked,
      'is_disliked': instance.isDisliked,
      'like_count': instance.likeCount,
      'user_rating': instance.userRating,
      'average_rating': instance.averageRating,
    };
