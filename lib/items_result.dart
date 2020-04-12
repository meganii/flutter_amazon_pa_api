import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_amazon_pa_api/item.dart';

part 'items_result.g.dart';

@JsonSerializable(explicitToJson: true)
class ItemsResult {
  @JsonKey(name: 'Items')
  List<Item> items;

  ItemsResult(this.items);

  factory ItemsResult.fromJson(Map<String, dynamic> json) => _$ItemsResultFromJson(json);
  Map<String, dynamic> toJson() => _$ItemsResultToJson(this);
}