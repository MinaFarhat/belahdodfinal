// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getcartitemsentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartItemsEntity _$GetCartItemsEntityFromJson(Map<String, dynamic> json) =>
    GetCartItemsEntity(
      (json['products'] as List<dynamic>)
          .map((e) => ProductsofCartEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['total_amount'] as num).toInt(),
    );

Map<String, dynamic> _$GetCartItemsEntityToJson(GetCartItemsEntity instance) =>
    <String, dynamic>{
      'products': instance.products,
      'total_amount': instance.totalPrice,
    };
