// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swapentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwapEntity _$SwapEntityFromJson(Map<String, dynamic> json) => SwapEntity(
      json['is_sent'] as bool,
      json['message'] as String,
    );

Map<String, dynamic> _$SwapEntityToJson(SwapEntity instance) =>
    <String, dynamic>{
      'is_sent': instance.isSent,
      'message': instance.message,
    };
