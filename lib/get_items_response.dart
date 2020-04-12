import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_amazon_pa_api/items_result.dart';

part 'get_items_response.g.dart';

@JsonSerializable()
class GetItemsResponse {
  @JsonKey(name: 'ItemsResult')
  ItemsResult itemsResult;
  
  GetItemsResponse(this.itemsResult);

  factory GetItemsResponse.fromJson(Map<String, dynamic> json) => _$GetItemsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$GetItemsResponseToJson(this);
}