import 'package:flutter_amazon_pa_api/images.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  @JsonKey(name: 'ASIN')
  String asin;

  @JsonKey(name: 'DetailPageURL')
  String detailPageURL;

  @JsonKey(name: 'Images')
  Images images;

  Item(this.asin, this.detailPageURL, this.images);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}