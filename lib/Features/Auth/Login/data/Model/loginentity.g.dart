// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginEntity _$LoginEntityFromJson(Map<String, dynamic> json) => LoginEntity(
      json['token'] as String,
      (json['user_id'] as num).toInt(),
    );

Map<String, dynamic> _$LoginEntityToJson(LoginEntity instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user_id': instance.id,
    };
