import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deleteaccountentity.g.dart';

@JsonSerializable()
class DeleteAccountEntity {
  @JsonKey(name: "message")
  final String message;

  DeleteAccountEntity(this.message);

  factory DeleteAccountEntity.fromJson(Map<String, dynamic> json) =>
      _$DeleteAccountEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteAccountEntityToJson(this);
}
