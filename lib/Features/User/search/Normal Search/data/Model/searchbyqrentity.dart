import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'searchbyqrentity.g.dart';

@JsonSerializable()
class SearchByQrEntity {
  @JsonKey(name: "isFound")
  final bool isFound;
  @JsonKey(name: "product_id")
  final int? productId;
  @JsonKey(name: "section_id")
  final int? sectionId;

  SearchByQrEntity(
    this.isFound,
    this.productId,
    this.sectionId,
  );

  factory SearchByQrEntity.fromJson(Map<String, dynamic> json) =>
      _$SearchByQrEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SearchByQrEntityToJson(this);
}
