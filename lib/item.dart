import 'package:flutter_amazon_pa_api/images.dart';
import 'package:flutter_amazon_pa_api/item_info.dart';
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

  @JsonKey(name: 'ItemInfo')
  ItemInfo itemInfo;

  Item(this.asin, this.detailPageURL, this.images, this.itemInfo);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}