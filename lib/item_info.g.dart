// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemInfo _$ItemInfoFromJson(Map<String, dynamic> json) {
  return ItemInfo(
    json['ByLineInfo'] == null
        ? null
        : ByLineInfo.fromJson(json['ByLineInfo'] as Map<String, dynamic>),
    json['Title'] == null
        ? null
        : Title.fromJson(json['Title'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ItemInfoToJson(ItemInfo instance) => <String, dynamic>{
      'ByLineInfo': instance.byLineInfo,
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

ByLineInfo _$ByLineInfoFromJson(Map<String, dynamic> json) {
  return ByLineInfo(
    (json['Contributors'] as List)
        ?.map((e) =>
            e == null ? null : Contributor.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['Manufacturer'] == null
        ? null
        : Manufacturer.fromJson(json['Manufacturer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ByLineInfoToJson(ByLineInfo instance) =>
    <String, dynamic>{
      'Contributors': instance.contributors,
      'Manufacturer': instance.manufacturer,
    };

Contributor _$ContributorFromJson(Map<String, dynamic> json) {
  return Contributor(
    json['Locale'] as String,
    json['Name'] as String,
    json['Role'] as String,
    json['RoleType'] as String,
  );
}

Map<String, dynamic> _$ContributorToJson(Contributor instance) =>
    <String, dynamic>{
      'Locale': instance.locale,
      'Name': instance.name,
      'Role': instance.role,
      'RoleType': instance.roleType,
    };

Manufacturer _$ManufacturerFromJson(Map<String, dynamic> json) {
  return Manufacturer(
    json['DisplayValue'] as String,
    json['Label'] as String,
    json['Locale'] as String,
  );
}

Map<String, dynamic> _$ManufacturerToJson(Manufacturer instance) =>
    <String, dynamic>{
      'DisplayValue': instance.displayValue,
      'Label': instance.label,
      'Locale': instance.locale,
    };
