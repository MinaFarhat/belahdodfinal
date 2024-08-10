import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'changestatenoteentity.g.dart';

@JsonSerializable()
class ChangeStateNoteEntity {
  @JsonKey(name: "message")
  final String message;

  ChangeStateNoteEntity(this.message);
  factory ChangeStateNoteEntity.fromJson(Map<String, dynamic> json) =>
      _$ChangeStateNoteEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeStateNoteEntityToJson(this);
}
