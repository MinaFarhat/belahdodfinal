// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sectionentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionEntity _$SectionEntityFromJson(Map<String, dynamic> json) =>
    SectionEntity(
      (json['data'] as List<dynamic>)
          .map((e) => SectionData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SectionEntityToJson(SectionEntity instance) =>
    <String, dynamic>{
      'data': instance.sections,
    };

SectionData _$SectionDataFromJson(Map<String, dynamic> json) => SectionData(
      sectionId: (json['id'] as num).toInt(),
      name: json['name'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SectionDataToJson(SectionData instance) =>
    <String, dynamic>{
      'id': instance.sectionId,
      'name': instance.name,
      'products': instance.products,
    };
