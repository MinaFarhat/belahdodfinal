// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onarrivalentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OnArrivalEntity _$OnArrivalEntityFromJson(Map<String, dynamic> json) =>
    OnArrivalEntity(
      json['message'] as String,
      json['is_sent'] as bool,
    );

Map<String, dynamic> _$OnArrivalEntityToJson(OnArrivalEntity instance) =>
    <String, dynamic>{
      'message': instance.message,
      'is_sent': instance.isSent,
    };
