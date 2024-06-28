import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'getnotificationsentity.g.dart';

@JsonSerializable()
class GetNotificationsEntity {
  @JsonKey(name: "data")
  final List<GetNotificationsData> getNotifications;

  GetNotificationsEntity(this.getNotifications);

  factory GetNotificationsEntity.fromJson(Map<String, dynamic> json) =>
      _$GetNotificationsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetNotificationsEntityToJson(this);
}

@JsonSerializable()
class GetNotificationsData {
  @JsonKey(name: "id")
  final int noteId;
  @JsonKey(name: "title")
  final String noteTitle;
  @JsonKey(name: "description")
  final String noteDescription;
  @JsonKey(name: "is_read")
  final bool isRead;
  @JsonKey(name: "type")
  final int noteType;

  GetNotificationsData(
    this.noteId,
    this.noteTitle,
    this.noteDescription,
    this.isRead,
    this.noteType,
  );
  factory GetNotificationsData.fromJson(Map<String, dynamic> json) =>
      _$GetNotificationsDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetNotificationsDataToJson(this);
}
