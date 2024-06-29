// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getnewsentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNewsEntity _$GetNewsEntityFromJson(Map<String, dynamic> json) =>
    GetNewsEntity(
      (json['data'] as List<dynamic>)
          .map((e) => GetNewsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetNewsEntityToJson(GetNewsEntity instance) =>
    <String, dynamic>{
      'data': instance.news,
    };

GetNewsData _$GetNewsDataFromJson(Map<String, dynamic> json) => GetNewsData(
      (json['id'] as num).toInt(),
      json['image'] as String,
      json['description'] as String,
    );

Map<String, dynamic> _$GetNewsDataToJson(GetNewsData instance) =>
    <String, dynamic>{
      'id': instance.newsId,
      'description': instance.newsDescription,
      'image': instance.newsImage,
    };
