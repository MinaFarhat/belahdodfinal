// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quraanvisitorentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuraanVisitorEntity _$QuraanVisitorEntityFromJson(Map<String, dynamic> json) =>
    QuraanVisitorEntity(
      json['name'] as String,
      json['barcode'] as String,
      json['description'] as String,
      (json['price'] as num).toInt(),
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['quran_publisher'] as String,
      json['quran_size'] as String,
      (json['quran_num_of_pages'] as num).toInt(),
      json['quran_print_type'] as String,
      json['quran_specifications'] as String,
      json['section_name'] as String,
      (json['like_count'] as num).toInt(),
      json['average_rating'] as String,
    );

Map<String, dynamic> _$QuraanVisitorEntityToJson(
        QuraanVisitorEntity instance) =>
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
      'like_count': instance.likeCount,
      'average_rating': instance.averageRating,
    };
