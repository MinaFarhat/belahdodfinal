import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bookentity.g.dart';

@JsonSerializable()
class BookEntity {
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
  @JsonKey(name: "book_author")
  final String auther;
  @JsonKey(name: "book_translator")
  final String translater;
  @JsonKey(name: "book_dimensions")
  final String measurements;
  @JsonKey(name: "book_num_of_pages")
  final int numberofpages;
  @JsonKey(name: "book_print_type")
  final String printtype;
  @JsonKey(name: "book_target_age")
  final String targetage;
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
  BookEntity(
    this.title,
    this.barcode,
    this.subTitle,
    this.price,
    this.images,
    this.auther,
    this.translater,
    this.measurements,
    this.numberofpages,
    this.printtype,
    this.targetage,
    this.sectionName,
    this.isFavorite,
    this.isLiked,
    this.isDisliked,
    this.likeCount,
    this.userRating,
    this.averageRating,
  );

  factory BookEntity.fromJson(Map<String, dynamic> json) =>
      _$BookEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BookEntityToJson(this);
}
