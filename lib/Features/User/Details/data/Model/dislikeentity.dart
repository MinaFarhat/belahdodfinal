import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dislikeentity.g.dart';

@JsonSerializable()
class DisLikeEntity {
  @JsonKey(name: "message")
  final String message;

  DisLikeEntity(this.message);
  factory DisLikeEntity.fromJson(Map<String, dynamic> json) =>
      _$DisLikeEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DisLikeEntityToJson(this);
}
