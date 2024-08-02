import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'getuserinfoentity.g.dart';

@JsonSerializable()
class GetUserInfoEntity {
  @JsonKey(name: "name")
  final String userName;
  @JsonKey(name: "address")
  final String userAddress;
  @JsonKey(name: "profile_picture")
  final String? userProfilePicture;
  @JsonKey(name: "orders")
  final int userOrders;
  @JsonKey(name: "points")
  final int userPoints;
  @JsonKey(name: "coupons")
  final int userCoupons;

  GetUserInfoEntity(
    this.userName,
    this.userAddress,
    this.userProfilePicture,
    this.userOrders,
    this.userPoints,
    this.userCoupons,
  );

  factory GetUserInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$GetUserInfoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetUserInfoEntityToJson(this);
}
