// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quraanentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuraanEntity _$QuraanEntityFromJson(Map<String, dynamic> json) => QuraanEntity(
      json['name'] as String,
      json['barcode'] as String,
      json['description'] as String,
      (json['price'] as num).toInt(),
      (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      json['quran_publisher'] as String,
      json['quran_size'] as String,
      (json['quran_num_of_pages'] as num).toInt(),
      json['quran_print_type'] as String,
      json['quran_specifications'] as String,
      json['section_name'] as String,
      json['is_favorite'] as bool,
      json['is_liked'] as bool,
      json['is_disliked'] as bool,
      (json['like_count'] as num).toInt(),
      (json['user_rating'] as num).toInt(),
      json['average_rating'] as String,
    );

Map<String, dynamic> _$QuraanEntityToJson(QuraanEntity instance) =>
    <String, dynamic>{
      'name': instance.title,
      'barcode': instance.barcode,
      'description': instance.subTitle,
      'price': instance.price,
      'images': instance.images,
      'quran_publisher': instance.publisher,
      'quran_size': instance.size,
      'quran_num_of_pages': instance.numberofpages,
      'quran_print_type': instance.printtype,
      'quran_specifications': instance.specifications,
      'section_name': instance.sectionName,
      'is_favorite': instance.isFavorite,
      'is_liked': instance.isLiked,
      'is_disliked': instance.isDisliked,
      'like_count': instance.likeCount,
      'user_rating': instance.userRating,
      'average_rating': instance.averageRating,
    };
