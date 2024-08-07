// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transferentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferEntity _$TransferEntityFromJson(Map<String, dynamic> json) =>
    TransferEntity(
      json['message'] as String,
      json['is_sent'] as bool,
    );

Map<String, dynamic> _$TransferEntityToJson(TransferEntity instance) =>
    <String, dynamic>{
      'message': instance.message,
      'is_sent': instance.isSent,
    };
