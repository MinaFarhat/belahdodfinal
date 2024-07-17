// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sectionvisitorentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SectionVisitorEntity _$SectionVisitorEntityFromJson(
        Map<String, dynamic> json) =>
    SectionVisitorEntity(
      (json['data'] as List<dynamic>)
          .map((e) => SectionVisitorData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SectionVisitorEntityToJson(
        SectionVisitorEntity instance) =>
    <String, dynamic>{
      'data': instance.sectionsVisitor,
    };

SectionVisitorData _$SectionVisitorDataFromJson(Map<String, dynamic> json) =>
    SectionVisitorData(
      (json['id'] as num).toInt(),
      json['name'] as String,
      (json['products'] as List<dynamic>)
          .map((e) => ProductVisitorEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SectionVisitorDataToJson(SectionVisitorData instance) =>
    <String, dynamic>{
      'id': instance.sectionId,
      'name': instance.name,
      'products': instance.products,
    };
