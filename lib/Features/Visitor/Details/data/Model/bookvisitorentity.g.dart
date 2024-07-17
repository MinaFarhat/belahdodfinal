// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookvisitorentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookVisitorEntity _$BookVisitorEntityFromJson(Map<String, dynamic> json) =>
    BookVisitorEntity(
      json['name'] as String,
      json['barcode'] as String,
      json['description'] as String,
      (json['price'] as num).toInt(),
      (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      json['book_author'] as String,
      json['book_translator'] as String,
      json['book_dimensions'] as String,
      (json['book_num_of_pages'] as num).toInt(),
      json['book_print_type'] as String,
      json['book_target_age'] as String,
      json['section_name'] as String,
      (json['like_count'] as num).toInt(),
      json['average_rating'] as String,
    );

Map<String, dynamic> _$BookVisitorEntityToJson(BookVisitorEntity instance) =>
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
      'like_count': instance.likeCount,
      'average_rating': instance.averageRating,
    };
