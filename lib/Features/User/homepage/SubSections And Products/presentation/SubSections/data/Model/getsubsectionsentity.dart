import 'package:json_annotation/json_annotation.dart';

part 'getsubsectionsentity.g.dart';

@JsonSerializable()
class GetSubSectionsEntity {
  @JsonKey(name: "data")
  final List<GetSubSectionsData> getsubsections;

  GetSubSectionsEntity(this.getsubsections);

  factory GetSubSectionsEntity.fromJson(Map<String, dynamic> json) =>
      _$GetSubSectionsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$GetSubSectionsEntityToJson(this);
}

@JsonSerializable()
class GetSubSectionsData {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "section_id")
  final int sectionId;

  GetSubSectionsData(this.id, this.name, this.sectionId);

  factory GetSubSectionsData.fromJson(Map<String, dynamic> json) =>
      _$GetSubSectionsDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetSubSectionsDataToJson(this);
}
