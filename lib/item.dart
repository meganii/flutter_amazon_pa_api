import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  @JsonKey(name: 'ASIN')
  String asin;

  @JsonKey(name: 'DetailPageURL')
  String detailPageURL;

  Item(this.asin, this.detailPageURL);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}