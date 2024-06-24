import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'productsofcartentity.dart';

part 'getcartitemsentity.g.dart';

@JsonSerializable()
class GetCartItemsEntity {
  @JsonKey(name: "products")
  final List<ProductsofCartEntity> products;
  @JsonKey(name: "total_amount")
  final int totalPrice;

  GetCartItemsEntity(this.products, this.totalPrice);

  factory GetCartItemsEntity.fromJson(Map<String, dynamic> json) =>
      _$GetCartItemsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetCartItemsEntityToJson(this);
}
