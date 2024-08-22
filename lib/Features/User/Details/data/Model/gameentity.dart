import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gameentity.g.dart';

@JsonSerializable()
class GameEntity {
  @JsonKey(name: "name")
  final String title;
  @JsonKey(name: "barcode")
  final String barcode;
  @JsonKey(name: "description")
  final String subTitle;
  @JsonKey(name: "price")
  final int price;
  @JsonKey(name: "images")
  final List<String>? images;
  @JsonKey(name: "game_target_age")
  final String age;
  @JsonKey(name: "game_goals")
  final String gameObjectives;
  @JsonKey(name: "game_materials")
  final String materials;
  @JsonKey(name: "game_manufacturer")
  final String publisher;
  @JsonKey(name: "game_num_of_players")
  final int numofplayers;
  @JsonKey(name: "section_name")
  final String sectionName;
  @JsonKey(name: "is_favorite")
  final bool isFavorite;
  @JsonKey(name: "is_liked")
  final bool isLiked;
  @JsonKey(name: "is_disliked")
  final bool isDisliked;
  @JsonKey(name: "like_count")
  final int likeCount;
  @JsonKey(name: "user_rating")
  final int userRating;
  @JsonKey(name: "average_rating")
  final String averageRating;

  GameEntity(
    this.title,
    this.barcode,
    this.subTitle,
    this.price,
    this.images,
    this.age,
    this.gameObjectives,
    this.materials,
    this.publisher,
    this.numofplayers,
    this.sectionName,
    this.isFavorite,
    this.isLiked,
    this.isDisliked,
    this.likeCount,
    this.userRating,
    this.averageRating,
  );

  factory GameEntity.fromJson(Map<String, dynamic> json) =>
      _$GameEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GameEntityToJson(this);
}
