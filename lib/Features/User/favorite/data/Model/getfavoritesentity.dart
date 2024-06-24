import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'getfavoritesentity.g.dart';

@JsonSerializable()
class GetFavoritesEntity {
  @JsonKey(name: "favorites")
  final List<GetFavoritesData> favorites;

  GetFavoritesEntity(this.favorites);

  factory GetFavoritesEntity.fromJson(Map<String, dynamic> json) =>
      _$GetFavoritesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetFavoritesEntityToJson(this);
}

@JsonSerializable()
class GetFavoritesData {
  @JsonKey(name: "id")
  final int favoriteProductId;
   @JsonKey(name: "name")
  final String name;
   @JsonKey(name: "description")
  final String description;
   @JsonKey(name: "image")
  final String image;

  GetFavoritesData(this.favoriteProductId, this.name, this.description, this.image);

   factory GetFavoritesData.fromJson(Map<String, dynamic> json) =>
      _$GetFavoritesDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetFavoritesDataToJson(this);

}
