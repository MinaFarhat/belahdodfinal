import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'addbalanceentity.g.dart';

@JsonSerializable()
class AddBalanceEntity {
  @JsonKey(name: "id")
  final int balanceId;
  @JsonKey(name: "success")
  final bool success;
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "user_id")
  final int userId;
  @JsonKey(name: "image")
  final List<String> images;

  AddBalanceEntity(
    this.balanceId,
    this.success,
    this.message,
    this.userId,
    this.images,
  );

  factory AddBalanceEntity.fromJson(Map<String, dynamic> json) =>
      _$AddBalanceEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AddBalanceEntityToJson(this);
}
