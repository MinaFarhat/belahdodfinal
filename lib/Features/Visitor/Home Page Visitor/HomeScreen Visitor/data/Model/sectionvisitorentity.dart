import 'package:belahododfinal/Features/Visitor/Home%20Page%20Visitor/HomeScreen%20Visitor/data/Model/productvisitorentity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sectionvisitorentity.g.dart';

@JsonSerializable()
class SectionVisitorEntity {
  @JsonKey(name: "data")
  final List<SectionVisitorData> sectionsVisitor;

  SectionVisitorEntity(this.sectionsVisitor);

  factory SectionVisitorEntity.fromJson(Map<String, dynamic> json) =>
      _$SectionVisitorEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SectionVisitorEntityToJson(this);
}

@JsonSerializable()
class SectionVisitorData {
  @JsonKey(name: "id")
  final int sectionId;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "products")
  final List<ProductVisitorEntity> products;

  SectionVisitorData(
    this.sectionId,
    this.name,
    this.products,
  );

  factory SectionVisitorData.fromJson(Map<String, dynamic> json) =>
      _$SectionVisitorDataFromJson(json);

  Map<String, dynamic> toJson() => _$SectionVisitorDataToJson(this);
}
