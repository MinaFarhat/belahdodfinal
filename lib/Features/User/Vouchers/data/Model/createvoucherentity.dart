import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'createvoucherentity.g.dart';

@JsonSerializable()
class CreateVoucherEntity {
  @JsonKey(name: "is_found")
  final bool isFound;
  @JsonKey(name: "is_created")
  final bool isCreated;

  CreateVoucherEntity(
    this.isFound,
    this.isCreated,
  );
  factory CreateVoucherEntity.fromJson(Map<String, dynamic> json) =>
      _$CreateVoucherEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CreateVoucherEntityToJson(this);
}
