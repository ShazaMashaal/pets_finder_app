// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreedModel _$BreedModelFromJson(Map<String, dynamic> json) => BreedModel(
  id: json['id'] as String?,
  name: json['name'] as String?,
  cfaUrl: json['cfa_url'] as String?,
  vetstreetUrl: json['vetstreet_url'] as String?,
  vcahospitalsUrl: json['vcahospitals_url'] as String?,
  temperament: json['temperament'] as String?,
  origin: json['origin'] as String?,
  countryCodes: json['country_codes'] as String?,
  countryCode: json['country_code'] as String?,
  description: json['description'] as String?,
  referenceImageId: json['reference_image_id'] as String?,
  image: json['image'] == null
      ? null
      : Image.fromJson(json['image'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BreedModelToJson(BreedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cfa_url': instance.cfaUrl,
      'vetstreet_url': instance.vetstreetUrl,
      'vcahospitals_url': instance.vcahospitalsUrl,
      'temperament': instance.temperament,
      'origin': instance.origin,
      'country_codes': instance.countryCodes,
      'country_code': instance.countryCode,
      'description': instance.description,
      'reference_image_id': instance.referenceImageId,
      'image': instance.image,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
  id: json['id'] as String?,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  url: json['url'] as String?,
);

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
  'id': instance.id,
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};
