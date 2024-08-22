import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'baseentity.g.dart';

@JsonSerializable()
class BaseEntity {
  @JsonKey(name: "name")
  final String title;
  @JsonKey(name: "barcode")
  final String barcode;
  @JsonKey(name: "description")
  final String subTitle;
  @JsonKey(name: "price")
  final int price;
  @JsonKey(name: "images")
  final List<String> ?images;
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
  BaseEntity(
    this.title,
    this.barcode,
    this.subTitle,
    this.price,
    this.images,
    this.sectionName,
    this.isFavorite,
    this.isLiked,
    this.isDisliked,
    this.likeCount,
    this.userRating,
    this.averageRating,
  );

  factory BaseEntity.fromJson(Map<String, dynamic> json) =>
      _$BaseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BaseEntityToJson(this);
}
