import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sendofferentity.g.dart';

@JsonSerializable()
class SendOfferEntity {
  @JsonKey(name: "is_sent")
  final bool isSent;
  @JsonKey(name: "message")
  final String message;

  SendOfferEntity(this.isSent, this.message);

  factory SendOfferEntity.fromJson(Map<String, dynamic> json) =>
      _$SendOfferEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SendOfferEntityToJson(this);
}
