// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchresultsentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultsEntity _$SearchResultsEntityFromJson(Map<String, dynamic> json) =>
    SearchResultsEntity(
      (json['data'] as List<dynamic>)
          .map((e) => SearchResultsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResultsEntityToJson(
        SearchResultsEntity instance) =>
    <String, dynamic>{
      'data': instance.searchResults,
    };

SearchResultsData _$SearchResultsDataFromJson(Map<String, dynamic> json) =>
    SearchResultsData(
      (json['id'] as num).toInt(),
      (json['section_id'] as num).toInt(),
      json['name'] as String,
      json['first_image'] as String?,
    );

Map<String, dynamic> _$SearchResultsDataToJson(SearchResultsData instance) =>
    <String, dynamic>{
      'id': instance.productId,
      'section_id': instance.sectionId,
      'name': instance.productName,
      'first_image': instance.productImage,
    };
