import 'package:pets_finder_app/core/networking/api_service.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/favorite_model.dart';

class FavoritesRepo {
  final ApiService _apiService;
  FavoritesRepo(this._apiService);

  Future<ApiResult<List<FavoriteModel>>> getFavorites() async {
    try {
      final response = await _apiService.getFavorites();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
