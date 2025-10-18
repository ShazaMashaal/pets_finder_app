import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_finder_app/features/home/data/models/breed_model.dart';
part 'pet_model.g.dart';

@JsonSerializable()
class PetModel {
  List<BreedModel>? breeds;
  String? id;
  String? url;
  int? width;
  int? height;

  PetModel({this.breeds, this.id, this.url, this.width, this.height});
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is PetModel && runtimeType == other.runtimeType && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;

  factory PetModel.fromJson(Map<String, dynamic> json) =>
      _$PetModelFromJson(json);

  Map<String, dynamic> toJson() => _$PetModelToJson(this);
}
