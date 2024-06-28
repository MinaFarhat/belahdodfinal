import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'orderproductsentity.g.dart';

@JsonSerializable()
class OrderProductsEntity {
  @JsonKey(name: "product_id")
  final int productsId;
  @JsonKey(name: "section_id")
  final int sectionId;
  @JsonKey(name: "product_name")
  final String productName;
  @JsonKey(name: "first_image")
  final String firstImage;
  @JsonKey(name: "price")
  final String price;
  @JsonKey(name: "quantity")
  final int quantity;

  OrderProductsEntity(
    this.productsId,
    this.sectionId,
    this.productName,
    this.firstImage,
    this.price,
    this.quantity,
  );
  factory OrderProductsEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderProductsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OrderProductsEntityToJson(this);
}
