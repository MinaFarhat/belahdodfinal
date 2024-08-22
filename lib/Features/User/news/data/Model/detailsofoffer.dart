import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'detailsofoffer.g.dart';

@JsonSerializable()
class DetailsofOfferEntity {
  @JsonKey(name: "id")
  final int offerId;
  @JsonKey(name: "name")
  final String offerName;
  @JsonKey(name: "description")
  final String offerDescription;
  @JsonKey(name: "first_image")
  final String ?offerImage;
  @JsonKey(name: "duration")
  final int offerDuration;
  @JsonKey(name: "items")
  final List<Map<String, dynamic>> productsofOffer;
  @JsonKey(name: "old_price")
  final int offerOldPrice;
  @JsonKey(name: "new_price")
  final int offerNewPrice;

  DetailsofOfferEntity(
    this.offerId,
    this.offerName,
    this.offerDescription,
    this.offerImage,
    this.offerDuration,
    this.productsofOffer,
    this.offerOldPrice,
    this.offerNewPrice,
  );

  factory DetailsofOfferEntity.fromJson(Map<String, dynamic> json) =>
      _$DetailsofOfferEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsofOfferEntityToJson(this);
}
