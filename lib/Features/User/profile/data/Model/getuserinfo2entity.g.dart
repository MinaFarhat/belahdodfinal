// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getuserinfo2entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserInfo2Entity _$GetUserInfo2EntityFromJson(Map<String, dynamic> json) =>
    GetUserInfo2Entity(
      json['name'] as String,
      json['phone_number'] as String,
      json['city'] as String,
      json['address'] as String,
    );

Map<String, dynamic> _$GetUserInfo2EntityToJson(GetUserInfo2Entity instance) =>
    <String, dynamic>{
      'name': instance.userName,
      'phone_number': instance.userPhoneNumber,
      'city': instance.userCity,
      'address': instance.userAddress,
    };
