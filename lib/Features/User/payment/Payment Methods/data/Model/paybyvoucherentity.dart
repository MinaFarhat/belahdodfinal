import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paybyvoucherentity.g.dart';

@JsonSerializable()
class PayByVoucherEntity {
  @JsonKey(name: "is_sent")
  final bool isSent;
  @JsonKey(name: "message")
  final String message;

  PayByVoucherEntity(this.isSent, this.message);

  factory PayByVoucherEntity.fromJson(Map<String, dynamic> json) =>
      _$PayByVoucherEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PayByVoucherEntityToJson(this);
}
