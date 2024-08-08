// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getvouchersentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetVouchersEntity _$GetVouchersEntityFromJson(Map<String, dynamic> json) =>
    GetVouchersEntity(
      (json['data'] as List<dynamic>)
          .map((e) => GetVouchersData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetVouchersEntityToJson(GetVouchersEntity instance) =>
    <String, dynamic>{
      'data': instance.vouchers,
    };

GetVouchersData _$GetVouchersDataFromJson(Map<String, dynamic> json) =>
    GetVouchersData(
      (json['id'] as num).toInt(),
      (json['total_value'] as num).toInt(),
      (json['value_left'] as num).toInt(),
      (json['value_consumed'] as num).toInt(),
      (json['percentage'] as num).toInt(),
      json['sender'] as String,
      json['receiver'] as String,
      json['created_at'] as String,
    );

Map<String, dynamic> _$GetVouchersDataToJson(GetVouchersData instance) =>
    <String, dynamic>{
      'id': instance.voucherId,
      'total_value': instance.voucherTotalValue,
      'value_left': instance.voucherAvailableValue,
      'value_consumed': instance.voucherConsumerValue,
      'percentage': instance.voucherPercentageConsumedValue,
      'sender': instance.voucherSender,
      'receiver': instance.voucherReceiver,
      'created_at': instance.voucherCreatedAt,
    };
