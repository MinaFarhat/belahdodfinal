import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'getcitiesentity.g.dart';

@JsonSerializable()
class GetCitiesEntity {
  @JsonKey(name: "data")
  final List<GetCitiesData> cities;

  GetCitiesEntity(this.cities);

  factory GetCitiesEntity.fromJson(Map<String, dynamic> json) =>
      _$GetCitiesEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetCitiesEntityToJson(this);
}

@JsonSerializable()
class GetCitiesData {
  @JsonKey(name: "id")
  final int cityId;
  @JsonKey(name: "name")
  final String name;

  GetCitiesData(this.cityId, this.name);

  factory GetCitiesData.fromJson(Map<String, dynamic> json) =>
      _$GetCitiesDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetCitiesDataToJson(this);
}
