// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookEntity _$BookEntityFromJson(Map<String, dynamic> json) => BookEntity(
      json['name'] as String,
      json['barcode'] as String,
      json['description'] as String,
      (json['price'] as num).toInt(),
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['book_author'] as String,
      json['book_translator'] as String,
      json['book_dimensions'] as String,
      (json['book_num_of_pages'] as num).toInt(),
      json['book_print_type'] as String,
      json['book_target_age'] as String,
      json['section_name'] as String,
      json['is_favorite'] as bool,
      json['is_liked'] as bool,
      json['is_disliked'] as bool,
      (json['like_count'] as num).toInt(),
      (json['user_rating'] as num).toInt(),
      json['average_rating'] as String,
    );

Map<String, dynamic> _$BookEntityToJson(BookEntity instance) =>
    <String, dynamic>{
      'name': instance.title,
      'barcode': instance.barcode,
      'description': instance.subTitle,
      'price': instance.price,
      'images': instance.images,
      'book_author': instance.auther,
      'book_translator': instance.translater,
      'book_dimensions': instance.measurements,
      'book_num_of_pages': instance.numberofpages,
      'book_print_type': instance.printtype,
      'book_target_age': instance.targetage,
      'section_name': instance.sectionName,
      'is_favorite': instance.isFavorite,
      'is_liked': instance.isLiked,
      'is_disliked': instance.isDisliked,
      'like_count': instance.likeCount,
      'user_rating': instance.userRating,
      'average_rating': instance.averageRating,
    };
