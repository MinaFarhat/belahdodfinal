import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loginentity.g.dart';

@JsonSerializable()
class LoginEntity {
  @JsonKey(name: "token")
  final String token;

  LoginEntity(this.token);

  factory LoginEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LoginEntityToJson(this);
}
