import 'package:json_annotation/json_annotation.dart';

part 'title.g.dart';

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