import 'package:pets_finder_app/core/networking/api_service.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../home/data/models/pet_model.dart';

class PetDetailsRepo {
  final ApiService _apiService;

  PetDetailsRepo(this._apiService);

  Future<ApiResult<PetModel>> getPetDetails(String id) async {
    try {
      final response = await _apiService.getPetDetails(id);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
