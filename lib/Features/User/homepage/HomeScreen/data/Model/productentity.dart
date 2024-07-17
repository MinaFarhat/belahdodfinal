import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'productentity.g.dart';

@JsonSerializable()
class ProductEntity {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "first_image")
  final String image;
  @JsonKey(name: "is_favorite")
  final bool isFavorite;

  ProductEntity(
    this.id,
    this.image,
    this.isFavorite,
  );
  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ProductEntityToJson(this);
}
