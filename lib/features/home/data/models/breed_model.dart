import 'package:json_annotation/json_annotation.dart';
part 'breed_model.g.dart';

@JsonSerializable()
class BreedModel {
  String? id;
  String? name;
  @JsonKey(name: "cfa_url")
  String? cfaUrl;
  @JsonKey(name: "vetstreet_url")
  String? vetstreetUrl;
  @JsonKey(name: "vcahospitals_url")
  String? vcahospitalsUrl;
  String? temperament;
  String? origin;
  @JsonKey(name: "country_codes")
  String? countryCodes;
  @JsonKey(name: "country_code")
  String? countryCode;
  String? description;
  @JsonKey(name: "reference_image_id")
  String? referenceImageId;
  Image? image;

  BreedModel({
    this.id,
    this.name,
    this.cfaUrl,
    this.vetstreetUrl,
    this.vcahospitalsUrl,
    this.temperament,
    this.origin,
    this.countryCodes,
    this.countryCode,
    this.description,
    this.referenceImageId,
    this.image,
  });
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BreedModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;

  factory BreedModel.fromJson(Map<String, dynamic> json) =>
      _$BreedModelFromJson(json);

  Map<String, dynamic> toJson() => _$BreedModelToJson(this);
}

@JsonSerializable()
class Image {
  String? id;
  int? width;
  int? height;
  String? url;

  Image({this.id, this.width, this.height, this.url});

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}
