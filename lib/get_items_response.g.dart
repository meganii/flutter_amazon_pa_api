// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_items_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetItemsResponse _$GetItemsResponseFromJson(Map<String, dynamic> json) {
  return GetItemsResponse(
    json['ItemsResult'] == null
        ? null
        : ItemsResult.fromJson(json['ItemsResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GetItemsResponseToJson(GetItemsResponse instance) =>
    <String, dynamic>{
      'ItemsResult': instance.itemsResult,
    };
