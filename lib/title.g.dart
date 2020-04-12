// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
