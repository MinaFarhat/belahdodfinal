import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'swapentity.g.dart';

@JsonSerializable()
class SwapEntity {
  @JsonKey(name: "is_sent")
  final bool isSent;
  @JsonKey(name: "message")
  final String message;

  SwapEntity(
    this.isSent,
    this.message,
  );

  factory SwapEntity.fromJson(Map<String, dynamic> json) =>
      _$SwapEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SwapEntityToJson(this);
}
