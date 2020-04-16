import 'package:json_annotation/json_annotation.dart';

part 'images.g.dart';

@JsonSerializable()
class Images {

  @JsonKey(name: 'Primary', nullable: true)
  Primary primary;

  @JsonKey(name: 'Variants', nullable: true)
  Variants variants;

  Images(this.primary, this.variants);

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

@JsonSerializable()
class Primary {
  @JsonKey(name: 'Small')
  Small small;

  @JsonKey(name: 'Medium')
  Medium medium;

  @JsonKey(name: 'Large')
  Large large;

  Primary(this.small, this.medium, this.large);

  factory Primary.fromJson(Map<String, dynamic> json) => _$PrimaryFromJson(json);
  Map<String, dynamic> toJson() => _$PrimaryToJson(this);
}

@JsonSerializable()
class Variants {
  @JsonKey(name: 'Small')
  Small small;

  @JsonKey(name: 'Medium')
  Medium medium;

  @JsonKey(name: 'Large')
  Large large;

  Variants(this.small, this.medium, this.large);

  factory Variants.fromJson(Map<String, dynamic> json) => _$VariantsFromJson(json);
  Map<String, dynamic> toJson() => _$VariantsToJson(this);
}

@JsonSerializable()
class Small {
  @JsonKey(name: 'URL')
  String url;

  @JsonKey(name: 'Height')
  int height;

  @JsonKey(name: 'Width')
  int width;

  Small(this.url, this.height, this.width);

  factory Small.fromJson(Map<String, dynamic> json) => _$SmallFromJson(json);
  Map<String, dynamic> toJson() => _$SmallToJson(this);
}

@JsonSerializable()
class Medium {
  @JsonKey(name: 'URL')
  String url;

  @JsonKey(name: 'Height')
  int height;

  @JsonKey(name: 'Width')
  int width;

  Medium(this.url, this.height, this.width);

  factory Medium.fromJson(Map<String, dynamic> json) => _$MediumFromJson(json);
  Map<String, dynamic> toJson() => _$MediumToJson(this);
}

@JsonSerializable()
class Large {
  @JsonKey(name: 'URL')
  String url;

  @JsonKey(name: 'Height')
  int height;

  @JsonKey(name: 'Width')
  int width;

  Large(this.url, this.height, this.width);

  factory Large.fromJson(Map<String, dynamic> json) => _$LargeFromJson(json);
  Map<String, dynamic> toJson() => _$LargeToJson(this);
}