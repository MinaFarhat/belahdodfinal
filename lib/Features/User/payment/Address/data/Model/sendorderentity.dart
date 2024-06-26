import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sendorderentity.g.dart';

@JsonSerializable()
class SendOrderEntity {
  @JsonKey(name: "success")
  final bool isSend;
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "details")
  final List<String> detailsOfMessage;

  SendOrderEntity(
    this.isSend,
    this.message,
    this.detailsOfMessage,
  );
  factory SendOrderEntity.fromJson(Map<String, dynamic> json) =>
      _$SendOrderEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SendOrderEntityToJson(this);
}
