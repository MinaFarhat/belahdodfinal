// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailsofoffer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailsofOfferEntity _$DetailsofOfferEntityFromJson(
        Map<String, dynamic> json) =>
    DetailsofOfferEntity(
      (json['id'] as num).toInt(),
      json['name'] as String,
      json['description'] as String,
      (json['duration'] as num).toInt(),
      (json['items'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      (json['old_price'] as num).toInt(),
      (json['new_price'] as num).toInt(),
    );

Map<String, dynamic> _$DetailsofOfferEntityToJson(
        DetailsofOfferEntity instance) =>
    <String, dynamic>{
      'id': instance.offerId,
      'name': instance.offerName,
      'description': instance.offerDescription,
      'duration': instance.offerDuration,
      'items': instance.productsofOffer,
      'old_price': instance.offerOldPrice,
      'new_price': instance.offerNewPrice,
    };
