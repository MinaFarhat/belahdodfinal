// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stationeryentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StationeryEntity _$StationeryEntityFromJson(Map<String, dynamic> json) =>
    StationeryEntity(
      json['name'] as String,
      json['description'] as String,
      (json['price'] as num).toInt(),
      (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      json['stationery_goals'] as String,
      json['stationery_materials'] as String,
      json['stationery_manufacturer'] as String,
      json['stationery_specifications'] as String,
    );

Map<String, dynamic> _$StationeryEntityToJson(StationeryEntity instance) =>
    <String, dynamic>{
      'name': instance.title,
      'description': instance.subTitle,
      'price': instance.price,
      'images': instance.images,
      'stationery_goals': instance.gameObjectives,
      'stationery_materials': instance.materials,
      'stationery_manufacturer': instance.publisher,
      'stationery_specifications': instance.specifications,
    };
