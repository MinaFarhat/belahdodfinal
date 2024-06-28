import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'onarrivalentity.g.dart';

@JsonSerializable()
class OnArrivalEntity {
  @JsonKey(name: "message")
  final String message;

  OnArrivalEntity(this.message);
  factory OnArrivalEntity.fromJson(Map<String, dynamic> json) =>
      _$OnArrivalEntityFromJson(json);

  Map<String, dynamic> toJson() => _$OnArrivalEntityToJson(this);
}
