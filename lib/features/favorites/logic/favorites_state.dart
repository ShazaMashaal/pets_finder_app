import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_finder_app/features/favorites/data/models/favorite_model.dart';

part 'favorites_state.freezed.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = FavoritesInitial;
  const factory FavoritesState.loading() = FavoritesLoading;
  const factory FavoritesState.success(List<FavoriteModel> favorites) =
      FavoritesSuccess;
  const factory FavoritesState.error(String message) = FavoritesError;
}
