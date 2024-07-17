import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bookvisitorentity.g.dart';

@JsonSerializable()
class BookVisitorEntity {
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
  @JsonKey(name: "like_count")
  final int likeCount;
  @JsonKey(name: "average_rating")
  final String averageRating;

  BookVisitorEntity(
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
    this.likeCount,
    this.averageRating,
  );

  factory BookVisitorEntity.fromJson(Map<String, dynamic> json) =>
      _$BookVisitorEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BookVisitorEntityToJson(this);
}
