import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'getproductsmainsection.g.dart';

@JsonSerializable()
class GetProductsMainSectionEntity {
  @JsonKey(name: "success")
  final bool success;
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "data")
  final List<GetProductsMainSectionData> productsMainSection;

  GetProductsMainSectionEntity(
    this.success,
    this.message,
    this.productsMainSection,
  );

  factory GetProductsMainSectionEntity.fromJson(Map<String, dynamic> json) =>
      _$GetProductsMainSectionEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetProductsMainSectionEntityToJson(this);
}

@JsonSerializable()
class GetProductsMainSectionData {
  @JsonKey(name: "id")
  final int productId;
  @JsonKey(name: "section")
  final int sectionId;
  @JsonKey(name: "name")
  final String productName;
  @JsonKey(name: "first_image")
  final String ?productImage;

  GetProductsMainSectionData(
    this.productId,
    this.sectionId,
    this.productName,
    this.productImage,
  );

  factory GetProductsMainSectionData.fromJson(Map<String, dynamic> json) =>
      _$GetProductsMainSectionDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetProductsMainSectionDataToJson(this);
}
