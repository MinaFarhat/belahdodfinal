import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'likeentity.g.dart';

@JsonSerializable()
class LikeEntity {
  @JsonKey(name: "message")
  final String message;

  LikeEntity(this.message);

  factory LikeEntity.fromJson(Map<String, dynamic> json) =>
      _$LikeEntityFromJson(json);

  Map<String, dynamic> toJson() => _$LikeEntityToJson(this);
}
