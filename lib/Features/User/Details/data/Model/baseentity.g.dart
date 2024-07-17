// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baseentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseEntity _$BaseEntityFromJson(Map<String, dynamic> json) => BaseEntity(
      json['name'] as String,
      json['barcode'] as String,
      json['description'] as String,
      (json['price'] as num).toInt(),
      (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      json['section_name'] as String,
      json['is_favorite'] as bool,
      json['is_liked'] as bool,
      json['is_disliked'] as bool,
      (json['like_count'] as num).toInt(),
      (json['user_rating'] as num).toInt(),
      json['average_rating'] as String,
    );

Map<String, dynamic> _$BaseEntityToJson(BaseEntity instance) =>
    <String, dynamic>{
      'name': instance.title,
      'barcode': instance.barcode,
      'description': instance.subTitle,
      'price': instance.price,
      'images': instance.images,
      'section_name': instance.sectionName,
      'is_favorite': instance.isFavorite,
      'is_liked': instance.isLiked,
      'is_disliked': instance.isDisliked,
      'like_count': instance.likeCount,
      'user_rating': instance.userRating,
      'average_rating': instance.averageRating,
    };
