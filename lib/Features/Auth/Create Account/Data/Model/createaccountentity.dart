import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'createaccountentity.g.dart';

@JsonSerializable()
class CreateAccountEntity {
  @JsonKey(name: "data")
  final List<CreateAccountData> createaccount;

  CreateAccountEntity(this.createaccount);

  factory CreateAccountEntity.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAccountEntityToJson(this);
}

@JsonSerializable()
class CreateAccountData {
  @JsonKey(name: "token")
  final String token;

  CreateAccountData({
    required this.token,
  });

  factory CreateAccountData.fromJson(Map<String, dynamic> json) =>
      _$CreateAccountDataFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAccountDataToJson(this);
}
