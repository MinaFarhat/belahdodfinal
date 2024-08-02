import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'getuserinfo2entity.g.dart';

@JsonSerializable()
class GetUserInfo2Entity {
  @JsonKey(name: "name")
  final String userName;
  @JsonKey(name: "phone_number")
  final String userPhoneNumber;
  @JsonKey(name: "city")
  final String userCity;
  @JsonKey(name: "address")
  final String userAddress;

  GetUserInfo2Entity(
    this.userName,
    this.userPhoneNumber,
    this.userCity,
    this.userAddress,
  );
  factory GetUserInfo2Entity.fromJson(Map<String, dynamic> json) =>
      _$GetUserInfo2EntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetUserInfo2EntityToJson(this);
}
