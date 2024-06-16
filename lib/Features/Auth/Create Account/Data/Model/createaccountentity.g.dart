// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createaccountentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAccountEntity _$CreateAccountEntityFromJson(Map<String, dynamic> json) =>
    CreateAccountEntity(
      (json['data'] as List<dynamic>)
          .map((e) => CreateAccountData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateAccountEntityToJson(
        CreateAccountEntity instance) =>
    <String, dynamic>{
      'data': instance.createaccount,
    };

CreateAccountData _$CreateAccountDataFromJson(Map<String, dynamic> json) =>
    CreateAccountData(
      token: json['token'] as String,
    );

Map<String, dynamic> _$CreateAccountDataToJson(CreateAccountData instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
