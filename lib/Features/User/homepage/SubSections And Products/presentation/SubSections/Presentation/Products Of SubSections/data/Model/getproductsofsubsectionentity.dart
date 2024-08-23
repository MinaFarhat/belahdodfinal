import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'getproductsofsubsectionentity.g.dart';

@JsonSerializable()
class GetProductsofSubSectionEntity {
  @JsonKey(name: "data")
  final List<GetProductsofSubSectionData> productsofsubsection;

  GetProductsofSubSectionEntity(this.productsofsubsection);

  factory GetProductsofSubSectionEntity.fromJson(Map<String, dynamic> json) =>
      _$GetProductsofSubSectionEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetProductsofSubSectionEntityToJson(this);
}

@JsonSerializable()
class GetProductsofSubSectionData {
  @JsonKey(name: "id")
  final int productsId;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "first_image")
  final String? image;

  GetProductsofSubSectionData(this.productsId, this.name, this.image);

  factory GetProductsofSubSectionData.fromJson(Map<String, dynamic> json) =>
      _$GetProductsofSubSectionDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetProductsofSubSectionDataToJson(this);
}
