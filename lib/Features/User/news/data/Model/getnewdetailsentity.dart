import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'getnewdetailsentity.g.dart';

@JsonSerializable()
class GetNewDetailsEntity {
  @JsonKey(name: "id")
  final int newsId;
  @JsonKey(name: "title")
  final String newsTitle;
  @JsonKey(name: "description")
  final String newsDescription;
  @JsonKey(name: "image")
  final String newsImage;

  GetNewDetailsEntity(
    this.newsId,
    this.newsTitle,
    this.newsDescription,
    this.newsImage,
  );
  factory GetNewDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$GetNewDetailsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetNewDetailsEntityToJson(this);
}
