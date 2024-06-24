import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quantityupdateentity.g.dart';

@JsonSerializable()
class QuantityUpdateEntity {
  @JsonKey(name: "message")
  final String message;

  QuantityUpdateEntity(this.message);
  factory QuantityUpdateEntity.fromJson(Map<String, dynamic> json) =>
      _$QuantityUpdateEntityFromJson(json);

  Map<String, dynamic> toJson() => _$QuantityUpdateEntityToJson(this);
}