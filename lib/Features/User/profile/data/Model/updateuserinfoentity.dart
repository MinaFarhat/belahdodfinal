import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'updateuserinfoentity.g.dart';

@JsonSerializable()
class UpdateUserInfoEntity {
  @JsonKey(name: "is_sent")
  final bool isSent;
  @JsonKey(name: "message")
  final String message;

  UpdateUserInfoEntity(
    this.isSent,
    this.message,
  );

  factory UpdateUserInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateUserInfoEntityToJson(this);
}
