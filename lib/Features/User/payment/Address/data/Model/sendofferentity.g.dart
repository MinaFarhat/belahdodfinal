// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sendofferentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendOfferEntity _$SendOfferEntityFromJson(Map<String, dynamic> json) =>
    SendOfferEntity(
      json['is_sent'] as bool,
      json['message'] as String,
    );

Map<String, dynamic> _$SendOfferEntityToJson(SendOfferEntity instance) =>
    <String, dynamic>{
      'is_sent': instance.isSent,
      'message': instance.message,
    };
