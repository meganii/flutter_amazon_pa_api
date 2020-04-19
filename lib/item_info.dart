import 'package:json_annotation/json_annotation.dart';

part 'item_info.g.dart';

@JsonSerializable()
class ItemInfo {

  @JsonKey(name: 'ByLineInfo')
  ByLineInfo byLineInfo;
  
  @JsonKey(name: 'Title')
  Title title;

  ItemInfo(this.byLineInfo, this.title);

  factory ItemInfo.fromJson(Map<String, dynamic> json) => _$ItemInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ItemInfoToJson(this);
}

@JsonSerializable()
class Title {

  @JsonKey(name: 'DisplayValue')
  String displayValue;

  @JsonKey(name: 'Label')
  String label;

  @JsonKey(name: 'Locale')
  String locale;

  Title(this.displayValue, this.label, this.locale);

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
  Map<String, dynamic> toJson() => _$TitleToJson(this);
}

@JsonSerializable()
class ByLineInfo {

  @JsonKey(name: 'Contributors')
  List<Contributor> contributors;

  @JsonKey(name: 'Manufacturer')
  Manufacturer manufacturer;

  ByLineInfo(this.contributors, this.manufacturer);

  factory ByLineInfo.fromJson(Map<String, dynamic> json) => _$ByLineInfoFromJson(json);
  Map<String, dynamic> toJson() => _$ByLineInfoToJson(this);
}

@JsonSerializable()
class Contributor {
  
  @JsonKey(name: 'Locale')
  String locale;

  @JsonKey(name: 'Name')
  String name;

  @JsonKey(name: 'Role')
  String role;

  @JsonKey(name: 'RoleType')
  String roleType;

  Contributor(this.locale, this.name, this.role, this.roleType);

  factory Contributor.fromJson(Map<String, dynamic> json) => _$ContributorFromJson(json);
  Map<String, dynamic> toJson() => _$ContributorToJson(this);
}

@JsonSerializable()
class Manufacturer {

  @JsonKey(name: 'DisplayValue')
  String displayValue;

  @JsonKey(name: 'Label')
  String label;

  @JsonKey(name: 'Locale')
  String locale;

  Manufacturer(this.displayValue, this.label, this.locale);

  factory Manufacturer.fromJson(Map<String, dynamic> json) => _$ManufacturerFromJson(json);
  Map<String, dynamic> toJson() => _$ManufacturerToJson(this);
}