import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'walletentity.g.dart';

@JsonSerializable()
class WalletEntity {
  @JsonKey(name: "is_sent")
  final bool isSent;
  @JsonKey(name: "message")
  final String message;

  WalletEntity(this.isSent, this.message);
  factory WalletEntity.fromJson(Map<String, dynamic> json) =>
      _$WalletEntityFromJson(json);

  Map<String, dynamic> toJson() => _$WalletEntityToJson(this);
}