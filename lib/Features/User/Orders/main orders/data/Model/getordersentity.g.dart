// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getordersentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrdersEntity _$GetOrdersEntityFromJson(Map<String, dynamic> json) =>
    GetOrdersEntity(
      (json['orders'] as List<dynamic>)
          .map((e) => GetOrdersData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetOrdersEntityToJson(GetOrdersEntity instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };

GetOrdersData _$GetOrdersDataFromJson(Map<String, dynamic> json) =>
    GetOrdersData(
      (json['id'] as num).toInt(),
      json['order_date'] as String,
      (json['total_cost'] as num).toInt(),
      json['order_status'] as String,
    );

Map<String, dynamic> _$GetOrdersDataToJson(GetOrdersData instance) =>
    <String, dynamic>{
      'id': instance.orderId,
      'order_date': instance.orderDate,
      'total_cost': instance.totalCost,
      'order_status': instance.orderStatus,
    };
