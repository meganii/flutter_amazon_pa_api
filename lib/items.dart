import 'package:flutter_amazon_pa_api/item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'items.g.dart';

@JsonSerializable()
class Items {
  final List<Item> items;
  
  Items(this.items);


  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}