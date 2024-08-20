import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iscliententity.g.dart';

@JsonSerializable()
class IsClientEntity {
  @JsonKey(name: "is_client")
  final bool isClient;

  IsClientEntity(this.isClient);

  factory IsClientEntity.fromJson(Map<String, dynamic> json) =>
      _$IsClientEntityFromJson(json);

  Map<String, dynamic> toJson() => _$IsClientEntityToJson(this);
}
