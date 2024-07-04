import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quraanentity.g.dart';

@JsonSerializable()
class QuraanEntity {
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
  @JsonKey(name: "quran_publisher")
  final String publisher;
  @JsonKey(name: "quran_size")
  final String size;
  @JsonKey(name: "quran_num_of_pages")
  final int numberofpages;
  @JsonKey(name: "quran_print_type")
  final String printtype;
  @JsonKey(name: "quran_specifications")
  final String specifications;

  QuraanEntity(
    this.title,
    this.barcode,
    this.subTitle,
    this.price,
    this.images,
    this.publisher,
    this.size,
    this.numberofpages,
    this.printtype,
    this.specifications,
  );
  factory QuraanEntity.fromJson(Map<String, dynamic> json) =>
      _$QuraanEntityFromJson(json);

  Map<String, dynamic> toJson() => _$QuraanEntityToJson(this);
}
