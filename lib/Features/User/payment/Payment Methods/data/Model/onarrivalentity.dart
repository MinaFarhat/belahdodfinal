import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'onarrivalentity.g.dart';

@JsonSerializable()
class OnArrivalEntity {
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "is_sent")
  final bool isSent;

  OnArrivalEntity(this.message, this.isSent);
  factory OnArrivalEntity.fromJson(Map<String, dynamic> json) =>
      _$OnArrivalEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OnArrivalEntityToJson(this);
}
