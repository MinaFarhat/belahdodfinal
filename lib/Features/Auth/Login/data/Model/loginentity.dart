import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loginentity.g.dart';

@JsonSerializable()
class LoginEntity {
  @JsonKey(name: "data")
  final List<LoginData> login;

  LoginEntity(this.login);

  factory LoginEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LoginEntityToJson(this);
}

@JsonSerializable()
class LoginData {
  @JsonKey(name: "token")
  final String token;

  LoginData({
    required this.token,
  });
  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginDataToJson(this);
}
