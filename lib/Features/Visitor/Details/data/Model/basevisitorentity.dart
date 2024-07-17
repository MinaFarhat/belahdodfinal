import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basevisitorentity.g.dart';

@JsonSerializable()
class BaseVisitorEntity {
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
  @JsonKey(name: "section_name")
  final String sectionName;
  @JsonKey(name: "like_count")
  final int likeCount;
  @JsonKey(name: "average_rating")
  final String averageRating;

  BaseVisitorEntity(
    this.title,
    this.barcode,
    this.subTitle,
    this.price,
    this.images,
    this.sectionName,
    this.likeCount,
    this.averageRating,
  );

  factory BaseVisitorEntity.fromJson(Map<String, dynamic> json) =>
      _$BaseVisitorEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BaseVisitorEntityToJson(this);
}
