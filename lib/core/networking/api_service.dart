import 'package:dio/dio.dart';
import 'package:pets_finder_app/features/favorites/data/models/favorite_model.dart';
import 'package:pets_finder_app/features/favorites/data/models/set_favorite_response.dart';
import 'package:pets_finder_app/features/home/data/models/pet_model.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/favorites/data/models/set_favorite_body.dart';
import '../../features/home/data/models/breed_model.dart';
import 'api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.breeds)
  Future<List<BreedModel>> getBreeds();

  @GET(ApiConstants.pets)
  Future<List<PetModel>> getPetsByBreedId(@Query("breed_ids") String breedId);

  @GET("${ApiConstants.petDetails}{id}")
  Future<PetModel> getPetDetails(@Path("id") String id);

  @GET(ApiConstants.favorites)
  Future<List<FavoriteModel>> getFavorites();

  @POST(ApiConstants.favorites)
  Future<SetFavoriteResponse> setFavorite(
    @Body() SetFavoriteBody setFavoriteBody,
  );

  @DELETE("${ApiConstants.favorites}/{id}")
  Future<void> removeFavorite(@Path("id") int id);

  // @POST(ApiConstants.breeds)
  // Future<LoginResponse> getBreeds(
  //   @Body() LoginRequestBody loginRequestBody,
  // );
  //
  // @POST(ApiConstants.signup)
  // Future<SignupResponse> signup(
  //   @Body() SignupRequestBody signupRequestBody,
  // );
}
