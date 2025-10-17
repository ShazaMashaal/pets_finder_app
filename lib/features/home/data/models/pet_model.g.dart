// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PetModel _$PetModelFromJson(Map<String, dynamic> json) => PetModel(
  breeds: (json['breeds'] as List<dynamic>?)
      ?.map((e) => BreedModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  id: json['id'] as String?,
  url: json['url'] as String?,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
);

Map<String, dynamic> _$PetModelToJson(PetModel instance) => <String, dynamic>{
  'breeds': instance.breeds,
  'id': instance.id,
  'url': instance.url,
  'width': instance.width,
  'height': instance.height,
};
