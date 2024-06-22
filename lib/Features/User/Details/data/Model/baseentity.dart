import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'baseentity.g.dart';

@JsonSerializable()
class BaseEntity {
  @JsonKey(name: "name")
  final String title;
  @JsonKey(name: "description")
  final String subTitle;
  @JsonKey(name: "price")
  final int price;
  @JsonKey(name: "images")
  final List<String> images;

  BaseEntity(
    this.title,
    this.subTitle,
    this.price,
    this.images,
  );

  factory BaseEntity.fromJson(Map<String, dynamic> json) =>
      _$BaseEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BaseEntityToJson(this);
}
