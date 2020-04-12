// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return Items(
    (json['items'] as List)
        ?.map(
            (e) => e == null ? null : Item.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'items': instance.items,
    };

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item(
    json['ASIN'] as String,
    json['DetailPageURL'] as String,
  );
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'ASIN': instance.asin,
      'DetailPageURL': instance.detailPageURL,
    };
