import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stationeryvisitorentity.g.dart';

@JsonSerializable()
class StationeryVisitorEntity {
  @JsonKey(name: "name")
  final String title;
  @JsonKey(name: "barcode")
  final String barcode;
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
  @JsonKey(name: "section_name")
  final String sectionName;
  @JsonKey(name: "like_count")
  final int likeCount;
  @JsonKey(name: "average_rating")
  final String averageRating;

  StationeryVisitorEntity(
    this.title,
    this.barcode,
    this.subTitle,
    this.price,
    this.images,
    this.gameObjectives,
    this.materials,
    this.publisher,
    this.specifications,
    this.sectionName,
    this.likeCount,
    this.averageRating,
  );

  factory StationeryVisitorEntity.fromJson(Map<String, dynamic> json) =>
      _$StationeryVisitorEntityFromJson(json);

  Map<String, dynamic> toJson() => _$StationeryVisitorEntityToJson(this);
}
