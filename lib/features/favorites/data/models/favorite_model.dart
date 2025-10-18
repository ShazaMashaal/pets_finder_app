import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../home/data/models/breed_model.dart';
part 'favorite_model.g.dart';

@JsonSerializable()
class FavoriteModel {
  int? id;
  String? userId;
  String? imageId;
  String? subId;
  String? createdAt;
  Image? image;

  FavoriteModel({
    this.id,
    this.userId,
    this.imageId,
    this.subId,
    this.createdAt,
    this.image,
  });

  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteModelToJson(this);
}
