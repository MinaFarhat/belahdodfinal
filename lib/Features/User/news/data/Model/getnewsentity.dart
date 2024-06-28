import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'getnewsentity.g.dart';

@JsonSerializable()
class GetNewsEntity {
  @JsonKey(name: "data")
  final List<GetNewsData> news;

  GetNewsEntity(this.news);

  factory GetNewsEntity.fromJson(Map<String, dynamic> json) =>
      _$GetNewsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetNewsEntityToJson(this);
}

@JsonSerializable()
class GetNewsData {
  @JsonKey(name: "id")
  final int newsId;
  @JsonKey(name: "image")
  final String newsImage;
  @JsonKey(name: "description")
  final String newsDescription;

  GetNewsData(
    this.newsId,
    this.newsImage,
    this.newsDescription,
  );

  factory GetNewsData.fromJson(Map<String, dynamic> json) =>
      _$GetNewsDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetNewsDataToJson(this);
}
