// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginEntity _$LoginEntityFromJson(Map<String, dynamic> json) => LoginEntity(
      (json['data'] as List<dynamic>)
          .map((e) => LoginData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LoginEntityToJson(LoginEntity instance) =>
    <String, dynamic>{
      'data': instance.login,
    };

LoginData _$LoginDataFromJson(Map<String, dynamic> json) => LoginData(
      token: json['token'] as String,
    );

Map<String, dynamic> _$LoginDataToJson(LoginData instance) => <String, dynamic>{
      'token': instance.token,
    };
