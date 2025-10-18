import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_finder_app/core/networking/api_result.dart';

import '../data/models/favorite_model.dart';
import '../data/repos/favorites_repo.dart';
import 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  final FavoritesRepo _favoritesRepo;
  FavoritesCubit(this._favoritesRepo) : super(FavoritesState.initial());
  List<FavoriteModel> favorites = [];

  Future<void> getFavorites() async {
    emit(FavoritesState.loading());
    try {
      final response = await _favoritesRepo.getFavorites();
      response.when(
        success: (favoritesList) {
          favorites = favoritesList;
          emit(FavoritesState.success(favoritesList));
        },
        failure: (error) {
          emit(
            FavoritesState.error(
              error.apiErrorModel.message ?? "Something Went Wrong",
            ),
          );
        },
      );
    } catch (e) {
      emit(FavoritesError(e.toString()));
    }
  }
}
