// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addbalanceentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddBalanceEntity _$AddBalanceEntityFromJson(Map<String, dynamic> json) =>
    AddBalanceEntity(
      (json['id'] as num).toInt(),
      json['success'] as bool,
      json['message'] as String,
      (json['user_id'] as num).toInt(),
      (json['image'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AddBalanceEntityToJson(AddBalanceEntity instance) =>
    <String, dynamic>{
      'id': instance.balanceId,
      'success': instance.success,
      'message': instance.message,
      'user_id': instance.userId,
      'image': instance.images,
    };
