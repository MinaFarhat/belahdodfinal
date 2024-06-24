import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deleteitemfromcartentity.g.dart';

@JsonSerializable()
class DeleteItemFromCartEntity {
  @JsonKey(name: "message")
  final String message;

  DeleteItemFromCartEntity(this.message);
  factory DeleteItemFromCartEntity.fromJson(Map<String, dynamic> json) =>
      _$DeleteItemFromCartEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteItemFromCartEntityToJson(this);
}
