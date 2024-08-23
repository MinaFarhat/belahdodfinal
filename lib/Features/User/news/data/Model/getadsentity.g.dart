// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getadsentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAdsEntity _$GetAdsEntityFromJson(Map<String, dynamic> json) => GetAdsEntity(
      (json['data'] as List<dynamic>)
          .map((e) => GetAdsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetAdsEntityToJson(GetAdsEntity instance) =>
    <String, dynamic>{
      'data': instance.ads,
    };

GetAdsData _$GetAdsDataFromJson(Map<String, dynamic> json) => GetAdsData(
      (json['id'] as num).toInt(),
      json['image'] as String?,
    );

Map<String, dynamic> _$GetAdsDataToJson(GetAdsData instance) =>
    <String, dynamic>{
      'id': instance.adId,
      'image': instance.adImage,
    };
