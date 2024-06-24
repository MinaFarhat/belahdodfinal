import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'addtofavoriteentity.g.dart';

@JsonSerializable()
class AddToFavoritesEntity {
  @JsonKey(name: "message")
  final String message;

  AddToFavoritesEntity(this.message);
  factory AddToFavoritesEntity.fromJson(Map<String, dynamic> json) =>
      _$AddToFavoritesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AddToFavoritesEntityToJson(this);
}
