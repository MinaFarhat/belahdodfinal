// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'walletentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletEntity _$WalletEntityFromJson(Map<String, dynamic> json) => WalletEntity(
      json['is_sent'] as bool,
      json['message'] as String,
    );

Map<String, dynamic> _$WalletEntityToJson(WalletEntity instance) =>
    <String, dynamic>{
      'is_sent': instance.isSent,
      'message': instance.message,
    };
