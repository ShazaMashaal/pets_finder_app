import 'package:freezed_annotation/freezed_annotation.dart';
part 'set_favorite_body.g.dart';

@JsonSerializable()
class SetFavoriteBody {
  @JsonKey(name: "image_id")
  final String imageId;
  @JsonKey(name: "sub_id")
  final int subId;

  SetFavoriteBody({required this.imageId, required this.subId});

  factory SetFavoriteBody.fromJson(Map<String, dynamic> json) =>
      _$SetFavoriteBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SetFavoriteBodyToJson(this);
}
