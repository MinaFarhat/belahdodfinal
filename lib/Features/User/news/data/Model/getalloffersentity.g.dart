// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getalloffersentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllOffersEntity _$GetAllOffersEntityFromJson(Map<String, dynamic> json) =>
    GetAllOffersEntity(
      (json['data'] as List<dynamic>)
          .map((e) => GetAllOffersData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAllOffersEntityToJson(GetAllOffersEntity instance) =>
    <String, dynamic>{
      'data': instance.offers,
    };

GetAllOffersData _$GetAllOffersDataFromJson(Map<String, dynamic> json) =>
    GetAllOffersData(
      (json['id'] as num).toInt(),
      json['name'] as String,
      json['description'] as String,
      (json['discount_rate'] as num).toInt(),
      json['image'] as String?,
    );

Map<String, dynamic> _$GetAllOffersDataToJson(GetAllOffersData instance) =>
    <String, dynamic>{
      'id': instance.offerId,
      'name': instance.offerName,
      'description': instance.offerDescription,
      'discount_rate': instance.offerDiscountRate,
      'image': instance.image,
    };
