// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkbalanceentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckBalanceEntity _$CheckBalanceEntityFromJson(Map<String, dynamic> json) =>
    CheckBalanceEntity(
      (json['data'] as num).toInt(),
    );

Map<String, dynamic> _$CheckBalanceEntityToJson(CheckBalanceEntity instance) =>
    <String, dynamic>{
      'data': instance.balance,
    };
