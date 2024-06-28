import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transferentity.g.dart';

@JsonSerializable()
class TransferEntity {
  @JsonKey(name: "message")
  final String message;

  TransferEntity(this.message);
  factory TransferEntity.fromJson(Map<String, dynamic> json) =>
      _$TransferEntityFromJson(json);

  Map<String, dynamic> toJson() => _$TransferEntityToJson(this);
}
