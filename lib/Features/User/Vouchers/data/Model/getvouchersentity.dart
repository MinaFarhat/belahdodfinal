import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'getvouchersentity.g.dart';

@JsonSerializable()
class GetVouchersEntity {
  @JsonKey(name: "data")
  final List<GetVouchersData> vouchers;

  GetVouchersEntity(this.vouchers);

  factory GetVouchersEntity.fromJson(Map<String, dynamic> json) =>
      _$GetVouchersEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetVouchersEntityToJson(this);
}

@JsonSerializable()
class GetVouchersData {
  @JsonKey(name: "id")
  final int voucherId;
  @JsonKey(name: "total_value")
  final int voucherTotalValue;
  @JsonKey(name: "value_left")
  final int voucherAvailableValue;
  @JsonKey(name: "value_consumed")
  final int voucherConsumerValue;
  @JsonKey(name: "percentage")
  final int voucherPercentageConsumedValue;
  @JsonKey(name: "sender")
  final String voucherSender;
  @JsonKey(name: "receiver")
  final String voucherReceiver;
  @JsonKey(name: "created_at")
  final String voucherCreatedAt;

  GetVouchersData(
    this.voucherId,
    this.voucherTotalValue,
    this.voucherAvailableValue,
    this.voucherConsumerValue,
    this.voucherPercentageConsumedValue,
    this.voucherSender,
    this.voucherReceiver,
    this.voucherCreatedAt,
  );

  factory GetVouchersData.fromJson(Map<String, dynamic> json) =>
      _$GetVouchersDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetVouchersDataToJson(this);
}
