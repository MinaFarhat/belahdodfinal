// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getfavoritesentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFavoritesEntity _$GetFavoritesEntityFromJson(Map<String, dynamic> json) =>
    GetFavoritesEntity(
      (json['favorites'] as List<dynamic>)
          .map((e) => GetFavoritesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetFavoritesEntityToJson(GetFavoritesEntity instance) =>
    <String, dynamic>{
      'favorites': instance.favorites,
    };

GetFavoritesData _$GetFavoritesDataFromJson(Map<String, dynamic> json) =>
    GetFavoritesData(
      (json['id'] as num).toInt(),
      json['name'] as String,
      json['description'] as String,
      json['image'] as String,
    );

Map<String, dynamic> _$GetFavoritesDataToJson(GetFavoritesData instance) =>
    <String, dynamic>{
      'id': instance.favoriteProductId,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
    };
