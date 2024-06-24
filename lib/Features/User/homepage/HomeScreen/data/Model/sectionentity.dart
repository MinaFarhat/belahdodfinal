import 'package:belahododfinal/Features/User/homepage/HomeScreen/data/Model/productentity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sectionentity.g.dart';

@JsonSerializable()
class SectionEntity {
  @JsonKey(name: "data")
  final List<SectionData> sections;

  SectionEntity(this.sections);
  factory SectionEntity.fromJson(Map<String, dynamic> json) =>
      _$SectionEntityFromJson(json);

  Map<String, dynamic> toJson() => _$SectionEntityToJson(this);
}

@JsonSerializable()
class SectionData {
  @JsonKey(name: "id")
  final int sectionId;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "products")
  final List<ProductEntity> products;

  SectionData({
    required this.sectionId,
    required this.name,
    required this.products,
  });

  factory SectionData.fromJson(Map<String, dynamic> json) =>
      _$SectionDataFromJson(json);

  Map<String, dynamic> toJson() => _$SectionDataToJson(this);
}
