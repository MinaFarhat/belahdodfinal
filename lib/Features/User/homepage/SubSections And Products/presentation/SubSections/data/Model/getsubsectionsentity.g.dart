// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getsubsectionsentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSubSectionsEntity _$GetSubSectionsEntityFromJson(
        Map<String, dynamic> json) =>
    GetSubSectionsEntity(
      (json['data'] as List<dynamic>)
          .map((e) => GetSubSectionsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetSubSectionsEntityToJson(
        GetSubSectionsEntity instance) =>
    <String, dynamic>{
      'data': instance.getsubsections,
    };

GetSubSectionsData _$GetSubSectionsDataFromJson(Map<String, dynamic> json) =>
    GetSubSectionsData(
      (json['id'] as num).toInt(),
      json['name'] as String,
      (json['section_id'] as num).toInt(),
    );

Map<String, dynamic> _$GetSubSectionsDataToJson(GetSubSectionsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'section_id': instance.sectionId,
    };
