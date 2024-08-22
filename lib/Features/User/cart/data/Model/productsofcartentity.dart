import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'productsofcartentity.g.dart';

@JsonSerializable()
class ProductsofCartEntity {
  @JsonKey(name: "product_id")
  final int id;
  @JsonKey(name: "section_id")
  final int sectionId;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "price")
  final int price;
  @JsonKey(name: "quantity")
  final int quantity;
  @JsonKey(name: "image")
  final String? image;

  ProductsofCartEntity(
    this.id,
    this.sectionId,
    this.name,
    this.price,
    this.quantity,
    this.image,
  );

  factory ProductsofCartEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductsofCartEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsofCartEntityToJson(this);
}
