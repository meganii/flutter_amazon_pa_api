// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
