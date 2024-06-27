import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'getordersentity.g.dart';

@JsonSerializable()
class GetOrdersEntity {
  @JsonKey(name: "orders")
  final List<GetOrdersData> orders;

  GetOrdersEntity(this.orders);

  factory GetOrdersEntity.fromJson(Map<String, dynamic> json) =>
      _$GetOrdersEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetOrdersEntityToJson(this);
}

@JsonSerializable()
class GetOrdersData {
  @JsonKey(name: "id")
  final int orderId;
  @JsonKey(name: "order_date")
  final String orderDate;
  @JsonKey(name: "total_cost")
  final int totalCost;
  @JsonKey(name: "order_status")
  final String orderStatus;

  GetOrdersData(
    this.orderId,
    this.orderDate,
    this.totalCost,
    this.orderStatus,
  );

  factory GetOrdersData.fromJson(Map<String, dynamic> json) =>
      _$GetOrdersDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetOrdersDataToJson(this);
}
