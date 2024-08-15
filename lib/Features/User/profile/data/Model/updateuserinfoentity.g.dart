// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updateuserinfoentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserInfoEntity _$UpdateUserInfoEntityFromJson(
        Map<String, dynamic> json) =>
    UpdateUserInfoEntity(
      json['is_sent'] as bool,
      json['message'] as String,
    );

Map<String, dynamic> _$UpdateUserInfoEntityToJson(
        UpdateUserInfoEntity instance) =>
    <String, dynamic>{
      'is_sent': instance.isSent,
      'message': instance.message,
    };
