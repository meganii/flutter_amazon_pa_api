// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return Images(
    json['Primary'] == null
        ? null
        : Primary.fromJson(json['Primary'] as Map<String, dynamic>),
    json['Variants'] == null
        ? null
        : Variants.fromJson(json['Variants'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'Primary': instance.primary,
      'Variants': instance.variants,
    };

Primary _$PrimaryFromJson(Map<String, dynamic> json) {
  return Primary(
    json['Small'] == null
        ? null
        : Small.fromJson(json['Small'] as Map<String, dynamic>),
    json['Medium'] == null
        ? null
        : Medium.fromJson(json['Medium'] as Map<String, dynamic>),
    json['Large'] == null
        ? null
        : Large.fromJson(json['Large'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PrimaryToJson(Primary instance) => <String, dynamic>{
      'Small': instance.small,
      'Medium': instance.medium,
      'Large': instance.large,
    };

Variants _$VariantsFromJson(Map<String, dynamic> json) {
  return Variants(
    json['Small'] == null
        ? null
        : Small.fromJson(json['Small'] as Map<String, dynamic>),
    json['Medium'] == null
        ? null
        : Medium.fromJson(json['Medium'] as Map<String, dynamic>),
    json['Large'] == null
        ? null
        : Large.fromJson(json['Large'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VariantsToJson(Variants instance) => <String, dynamic>{
      'Small': instance.small,
      'Medium': instance.medium,
      'Large': instance.large,
    };

Small _$SmallFromJson(Map<String, dynamic> json) {
  return Small(
    json['URL'] as String,
    json['Height'] as int,
    json['Width'] as int,
  );
}

Map<String, dynamic> _$SmallToJson(Small instance) => <String, dynamic>{
      'URL': instance.url,
      'Height': instance.height,
      'Width': instance.width,
    };

Medium _$MediumFromJson(Map<String, dynamic> json) {
  return Medium(
    json['URL'] as String,
    json['Height'] as int,
    json['Width'] as int,
  );
}

Map<String, dynamic> _$MediumToJson(Medium instance) => <String, dynamic>{
      'URL': instance.url,
      'Height': instance.height,
      'Width': instance.width,
    };

Large _$LargeFromJson(Map<String, dynamic> json) {
  return Large(
    json['URL'] as String,
    json['Height'] as int,
    json['Width'] as int,
  );
}

Map<String, dynamic> _$LargeToJson(Large instance) => <String, dynamic>{
      'URL': instance.url,
      'Height': instance.height,
      'Width': instance.width,
    };
