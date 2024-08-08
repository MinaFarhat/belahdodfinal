// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paybyvoucherentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayByVoucherEntity _$PayByVoucherEntityFromJson(Map<String, dynamic> json) =>
    PayByVoucherEntity(
      json['is_sent'] as bool,
      json['message'] as String,
    );

Map<String, dynamic> _$PayByVoucherEntityToJson(PayByVoucherEntity instance) =>
    <String, dynamic>{
      'is_sent': instance.isSent,
      'message': instance.message,
    };
