import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gameentity.g.dart';

@JsonSerializable()
class GameEntity {
  @JsonKey(name: "name")
  final String title;
  @JsonKey(name: "description")
  final String subTitle;
  @JsonKey(name: "price")
  final double price;
  @JsonKey(name: "images")
  final List<String> images;
  @JsonKey(name: "game_target_age")
  final String age;
  @JsonKey(name: "game_goals")
  final String gameObjectives;
  @JsonKey(name: "game_materials")
  final String materials;
  @JsonKey(name: "game_manufacturer")
  final String publisher;
  @JsonKey(name: "game_num_of_players")
  final String numofplayers;

  GameEntity(
    this.title,
    this.subTitle,
    this.price,
    this.images,
    this.age,
    this.gameObjectives,
    this.materials,
    this.publisher,
    this.numofplayers,
  );

  factory GameEntity.fromJson(Map<String, dynamic> json) =>
      _$GameEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GameEntityToJson(this);
}
