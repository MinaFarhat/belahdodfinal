// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orderdetailsentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailsEntity _$OrderDetailsEntityFromJson(Map<String, dynamic> json) =>
    OrderDetailsEntity(
      (json['order_total_amount'] as num).toInt(),
      json['order_date'] as String,
      json['order_status'] as String,
      json['address'] as String,
      (json['products'] as List<dynamic>)
          .map((e) => OrderProductsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderDetailsEntityToJson(OrderDetailsEntity instance) =>
    <String, dynamic>{
      'order_total_amount': instance.orderTotalAmount,
      'order_date': instance.orderDate,
      'order_status': instance.orderStatus,
      'address': instance.address,
      'products': instance.orderProducts,
    };
