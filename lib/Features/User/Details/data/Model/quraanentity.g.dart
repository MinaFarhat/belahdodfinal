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
    };
