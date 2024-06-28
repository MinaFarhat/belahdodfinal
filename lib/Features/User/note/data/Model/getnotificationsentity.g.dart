// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getnotificationsentity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNotificationsEntity _$GetNotificationsEntityFromJson(
        Map<String, dynamic> json) =>
    GetNotificationsEntity(
      (json['data'] as List<dynamic>)
          .map((e) => GetNotificationsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetNotificationsEntityToJson(
        GetNotificationsEntity instance) =>
    <String, dynamic>{
      'data': instance.getNotifications,
    };

GetNotificationsData _$GetNotificationsDataFromJson(
        Map<String, dynamic> json) =>
    GetNotificationsData(
      (json['id'] as num).toInt(),
      json['title'] as String,
      json['description'] as String,
      json['is_read'] as bool,
      (json['type'] as num).toInt(),
    );

Map<String, dynamic> _$GetNotificationsDataToJson(
        GetNotificationsData instance) =>
    <String, dynamic>{
      'id': instance.noteId,
      'title': instance.noteTitle,
      'description': instance.noteDescription,
      'is_read': instance.isRead,
      'type': instance.noteType,
    };
