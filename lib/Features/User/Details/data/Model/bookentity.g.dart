// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookEntity _$BookEntityFromJson(Map<String, dynamic> json) => BookEntity(
      json['name'] as String,
      json['description'] as String,
      (json['price'] as num).toDouble(),
      (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      json['book_author'] as String,
      json['book_translator'] as String,
      json['book_dimenions'] as String,
      (json['book_num_of_pages'] as num).toInt(),
      json['book_print_type'] as String,
      json['book_target_age'] as String,
    );

Map<String, dynamic> _$BookEntityToJson(BookEntity instance) =>
    <String, dynamic>{
      'name': instance.title,
      'description': instance.subTitle,
      'price': instance.price,
      'images': instance.images,
      'book_author': instance.auther,
      'book_translator': instance.translater,
      'book_dimenions': instance.measurements,
      'book_num_of_pages': instance.numberofpages,
      'book_print_type': instance.printtype,
      'book_target_age': instance.targetage,
    };
