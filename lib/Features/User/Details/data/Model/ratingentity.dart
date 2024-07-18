import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ratingentity.g.dart';

@JsonSerializable()
class RatingEntity {
  @JsonKey(name: "message")
  final String message;
  @JsonKey(name: "average_rating")
  final String averageRating;

  RatingEntity(
    this.message,
    this.averageRating,
  );
  factory RatingEntity.fromJson(Map<String, dynamic> json) =>
      _$RatingEntityFromJson(json);

  Map<String, dynamic> toJson() => _$RatingEntityToJson(this);
}
