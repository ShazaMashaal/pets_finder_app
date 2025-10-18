import 'package:freezed_annotation/freezed_annotation.dart';
part 'set_favorite_response.g.dart';

@JsonSerializable()
class SetFavoriteResponse {
  final String message;
  final int id;

  SetFavoriteResponse({required this.message, required this.id});

  factory SetFavoriteResponse.fromJson(Map<String, dynamic> json) =>
      _$SetFavoriteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SetFavoriteResponseToJson(this);
}
