// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginEntity _$LoginEntityFromJson(Map<String, dynamic> json) => LoginEntity(
      json['token'] as String,
      json['userid'] as String,
    );

Map<String, dynamic> _$LoginEntityToJson(LoginEntity instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userid': instance.id,
    };
