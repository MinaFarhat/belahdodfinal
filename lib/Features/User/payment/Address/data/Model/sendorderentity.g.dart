// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sendorderentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendOrderEntity _$SendOrderEntityFromJson(Map<String, dynamic> json) =>
    SendOrderEntity(
      json['success'] as bool,
      json['message'] as String,
      (json['details'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SendOrderEntityToJson(SendOrderEntity instance) =>
    <String, dynamic>{
      'success': instance.isSend,
      'message': instance.message,
      'details': instance.detailsOfMessage,
    };
