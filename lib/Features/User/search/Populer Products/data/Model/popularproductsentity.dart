import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'popularproductsentity.g.dart';

@JsonSerializable()
class PopularProductsEntity {
  @JsonKey(name: "data")
  final List<PopularProductsData> popularProducts;

  PopularProductsEntity(this.popularProducts);
  factory PopularProductsEntity.fromJson(Map<String, dynamic> json) =>
      _$PopularProductsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PopularProductsEntityToJson(this);
}

@JsonSerializable()
class PopularProductsData {
  @JsonKey(name: "product_id")
  final int productId;
  @JsonKey(name: "section_id")
  final int sectionId;
  @JsonKey(name: "image")
  final String? productImage;

  PopularProductsData(
    this.productId,
    this.sectionId,
    this.productImage,
  );

  factory PopularProductsData.fromJson(Map<String, dynamic> json) =>
      _$PopularProductsDataFromJson(json);

  Map<String, dynamic> toJson() => _$PopularProductsDataToJson(this);
}
