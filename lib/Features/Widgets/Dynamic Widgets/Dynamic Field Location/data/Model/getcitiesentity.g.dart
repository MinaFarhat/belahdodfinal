// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getcitiesentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCitiesEntity _$GetCitiesEntityFromJson(Map<String, dynamic> json) =>
    GetCitiesEntity(
      (json['data'] as List<dynamic>)
          .map((e) => GetCitiesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetCitiesEntityToJson(GetCitiesEntity instance) =>
    <String, dynamic>{
      'data': instance.cities,
    };

GetCitiesData _$GetCitiesDataFromJson(Map<String, dynamic> json) =>
    GetCitiesData(
      (json['id'] as num).toInt(),
      json['name'] as String,
    );

Map<String, dynamic> _$GetCitiesDataToJson(GetCitiesData instance) =>
    <String, dynamic>{
      'id': instance.cityId,
      'name': instance.name,
    };
