import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'checkbalanceentity.g.dart';

@JsonSerializable()
class CheckBalanceEntity {
  @JsonKey(name: "data")
  final int balance;

  CheckBalanceEntity(this.balance);

  factory CheckBalanceEntity.fromJson(Map<String, dynamic> json) =>
      _$CheckBalanceEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CheckBalanceEntityToJson(this);
}
