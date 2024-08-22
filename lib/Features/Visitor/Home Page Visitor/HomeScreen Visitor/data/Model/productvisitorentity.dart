import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'productvisitorentity.g.dart';

@JsonSerializable()
class ProductVisitorEntity {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "first_image")
  final String ?image;

  ProductVisitorEntity(
    this.id,
    this.image,
  );

  factory ProductVisitorEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductVisitorEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ProductVisitorEntityToJson(this);
}
