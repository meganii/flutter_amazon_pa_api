// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemInfo _$ItemInfoFromJson(Map<String, dynamic> json) {
  return ItemInfo(
    json['Title'] == null
        ? null
        : Title.fromJson(json['Title'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ItemInfoToJson(ItemInfo instance) => <String, dynamic>{
      'Title': instance.title,
    };

Title _$TitleFromJson(Map<String, dynamic> json) {
  return Title(
    json['DisplayValue'] as String,
    json['Label'] as String,
    json['Locale'] as String,
  );
}

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'DisplayValue': instance.displayValue,
      'Label': instance.label,
      'Locale': instance.locale,
    };
