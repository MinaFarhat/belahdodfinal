import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'getalloffersentity.g.dart';

@JsonSerializable()
class GetAllOffersEntity {
  @JsonKey(name: "data")
  final List<GetAllOffersData> offers;

  GetAllOffersEntity(this.offers);

  factory GetAllOffersEntity.fromJson(Map<String, dynamic> json) =>
      _$GetAllOffersEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllOffersEntityToJson(this);
}

@JsonSerializable()
class GetAllOffersData {
  @JsonKey(name: "id")
  final int offerId;
  @JsonKey(name: "name")
  final String offerName;
  @JsonKey(name: "description")
  final String offerDescription;
  @JsonKey(name: "discount_rate")
  final int offerDiscountRate;
  @JsonKey(name: "image")
  final String ?image;

  GetAllOffersData(
    this.offerId,
    this.offerName,
    this.offerDescription,
    this.offerDiscountRate,
    this.image,
  );

  factory GetAllOffersData.fromJson(Map<String, dynamic> json) =>
      _$GetAllOffersDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllOffersDataToJson(this);
}
