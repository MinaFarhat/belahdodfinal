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
      (json['order_id'] as num?)?.toInt(),
      (json['user_id'] as num?)?.toInt(),
      (json['section_id'] as num?)?.toInt(),
      (json['product_id'] as num?)?.toInt(),
      (json['news_id'] as num?)?.toInt(),
      (json['offer_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetNotificationsDataToJson(
        GetNotificationsData instance) =>
    <String, dynamic>{
      'id': instance.noteId,
      'title': instance.noteTitle,
      'description': instance.noteDescription,
      'is_read': instance.isRead,
      'type': instance.noteType,
      'order_id': instance.orderId,
      'user_id': instance.userId,
      'section_id': instance.sectionId,
      'product_id': instance.productId,
      'news_id': instance.newsId,
      'offer_id': instance.offerId,
    };
