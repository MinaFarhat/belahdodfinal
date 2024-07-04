// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gameentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameEntity _$GameEntityFromJson(Map<String, dynamic> json) => GameEntity(
      json['name'] as String,
      json['barcode'] as String,
      json['description'] as String,
      (json['price'] as num).toInt(),
      (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      json['game_target_age'] as String,
      json['game_goals'] as String,
      json['game_materials'] as String,
      json['game_manufacturer'] as String,
      (json['game_num_of_players'] as num).toInt(),
    );

Map<String, dynamic> _$GameEntityToJson(GameEntity instance) =>
    <String, dynamic>{
      'name': instance.title,
      'barcode': instance.barcode,
      'description': instance.subTitle,
      'price': instance.price,
      'images': instance.images,
      'game_target_age': instance.age,
      'game_goals': instance.gameObjectives,
      'game_materials': instance.materials,
      'game_manufacturer': instance.publisher,
      'game_num_of_players': instance.numofplayers,
    };
