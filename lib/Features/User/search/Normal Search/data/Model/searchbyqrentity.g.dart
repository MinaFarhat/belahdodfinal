// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchbyqrentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchByQrEntity _$SearchByQrEntityFromJson(Map<String, dynamic> json) =>
    SearchByQrEntity(
      json['isFound'] as bool,
      (json['product_id'] as num?)?.toInt(),
      (json['section_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchByQrEntityToJson(SearchByQrEntity instance) =>
    <String, dynamic>{
      'isFound': instance.isFound,
      'product_id': instance.productId,
      'section_id': instance.sectionId,
    };
