// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratingentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingEntity _$RatingEntityFromJson(Map<String, dynamic> json) => RatingEntity(
      json['message'] as String,
      json['average_rating'] as String,
    );

Map<String, dynamic> _$RatingEntityToJson(RatingEntity instance) =>
    <String, dynamic>{
      'message': instance.message,
      'average_rating': instance.averageRating,
    };
