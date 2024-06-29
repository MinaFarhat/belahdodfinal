import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'getadsentity.g.dart';

@JsonSerializable()
class GetAdsEntity {
  @JsonKey(name: "data")
  final List<GetAdsData> ads;

  GetAdsEntity(this.ads);
  factory GetAdsEntity.fromJson(Map<String, dynamic> json) =>
      _$GetAdsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetAdsEntityToJson(this);
}

@JsonSerializable()
class GetAdsData {
  @JsonKey(name: "id")
  final int adId;
  @JsonKey(name: "image")
  final String adImage;

  GetAdsData(this.adId, this.adImage);
  factory GetAdsData.fromJson(Map<String, dynamic> json) =>
      _$GetAdsDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetAdsDataToJson(this);
}
