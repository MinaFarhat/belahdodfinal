import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'searchresultsentity.g.dart';

@JsonSerializable()
class SearchResultsEntity {
  @JsonKey(name: "data")
  final List<SearchResultsData> searchResults;

  SearchResultsEntity(this.searchResults);

  factory SearchResultsEntity.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultsEntityToJson(this);
}

@JsonSerializable()
class SearchResultsData {
  @JsonKey(name: "id")
  final int productId;
  @JsonKey(name: "section_id")
  final int sectionId;
  @JsonKey(name: "name")
  final String productName;
  @JsonKey(name: "first_image")
  final String productImage;

  SearchResultsData(
    this.productId,
    this.sectionId,
    this.productName,
    this.productImage,
  );

  factory SearchResultsData.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsDataFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResultsDataToJson(this);
}
