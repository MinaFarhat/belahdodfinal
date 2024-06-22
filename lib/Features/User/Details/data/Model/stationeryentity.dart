import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stationeryentity.g.dart';

@JsonSerializable()
class StationeryEntity {
  @JsonKey(name: "name")
  final String title;
  @JsonKey(name: "description")
  final String subTitle;
  @JsonKey(name: "price")
  final int price;
  @JsonKey(name: "images")
  final List<String> images;
  @JsonKey(name: "stationery_goals")
  final String gameObjectives;
  @JsonKey(name: "stationery_materials")
  final String materials;
  @JsonKey(name: "stationery_manufacturer")
  final String publisher;
  @JsonKey(name: "stationery_specifications")
  final String specifications;

  StationeryEntity(
    this.title,
    this.subTitle,
    this.price,
    this.images,
    this.gameObjectives,
    this.materials,
    this.publisher,
    this.specifications,
  );

   factory StationeryEntity.fromJson(Map<String, dynamic> json) =>
      _$StationeryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$StationeryEntityToJson(this);
}
