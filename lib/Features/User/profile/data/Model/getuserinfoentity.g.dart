// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getuserinfoentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserInfoEntity _$GetUserInfoEntityFromJson(Map<String, dynamic> json) =>
    GetUserInfoEntity(
      json['name'] as String,
      json['address'] as String,
      json['profile_picture'] as String?,
      (json['orders'] as num).toInt(),
      (json['points'] as num).toInt(),
      (json['coupons'] as num).toInt(),
    );

Map<String, dynamic> _$GetUserInfoEntityToJson(GetUserInfoEntity instance) =>
    <String, dynamic>{
      'name': instance.userName,
      'address': instance.userAddress,
      'profile_picture': instance.userProfilePicture,
      'orders': instance.userOrders,
      'points': instance.userPoints,
      'coupons': instance.userCoupons,
    };
