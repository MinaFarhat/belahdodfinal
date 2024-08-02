import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'updatephotoentity.g.dart';

@JsonSerializable()
class UpdatePhotoEntity {
  @JsonKey(name: "message")
  final String message;

  UpdatePhotoEntity(this.message);

  factory UpdatePhotoEntity.fromJson(Map<String, dynamic> json) =>
      _$UpdatePhotoEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePhotoEntityToJson(this);
}
