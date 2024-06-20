import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'productentity.g.dart';

@JsonSerializable()
class ProductEntity {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "images")
  final List<String> image;

  ProductEntity(this.id, this.image);
  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ProductEntityToJson(this);
}
