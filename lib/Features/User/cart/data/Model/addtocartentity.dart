import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'addtocartentity.g.dart';

@JsonSerializable()
class AddtoCartEntity {
  @JsonKey(name: "message")
  final String message;

  AddtoCartEntity(this.message);

  factory AddtoCartEntity.fromJson(Map<String, dynamic> json) =>
      _$AddtoCartEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AddtoCartEntityToJson(this);
}
