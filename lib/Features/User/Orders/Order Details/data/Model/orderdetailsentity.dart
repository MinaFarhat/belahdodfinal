import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'orderproductsentity.dart';

part 'orderdetailsentity.g.dart';

@JsonSerializable()
class OrderDetailsEntity {
  @JsonKey(name: "order_total_amount")
  final int orderTotalAmount;
  @JsonKey(name: "order_date")
  final String orderDate;
  @JsonKey(name: "order_status")
  final String orderStatus;
  @JsonKey(name: "address")
  final String address;
  @JsonKey(name: "products")
  final List<OrderProductsEntity> orderProducts;

  OrderDetailsEntity(
    this.orderTotalAmount,
    this.orderDate,
    this.orderStatus,
    this.address,
    this.orderProducts,
  );
  factory OrderDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsEntityToJson(this);
}
