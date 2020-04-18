// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item(
    json['ASIN'] as String,
    json['DetailPageURL'] as String,
    json['Images'] == null
        ? null
        : Images.fromJson(json['Images'] as Map<String, dynamic>),
    json['ItemInfo'] == null
        ? null
        : ItemInfo.fromJson(json['ItemInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'ASIN': instance.asin,
      'DetailPageURL': instance.detailPageURL,
      'Images': instance.images,
      'ItemInfo': instance.itemInfo,
    };
