// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getnewdetailsentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNewDetailsEntity _$GetNewDetailsEntityFromJson(Map<String, dynamic> json) =>
    GetNewDetailsEntity(
      (json['id'] as num).toInt(),
      json['title'] as String,
      json['description'] as String,
      json['image'] as String?,
    );

Map<String, dynamic> _$GetNewDetailsEntityToJson(
        GetNewDetailsEntity instance) =>
    <String, dynamic>{
      'id': instance.newsId,
      'title': instance.newsTitle,
      'description': instance.newsDescription,
      'image': instance.newsImage,
    };
