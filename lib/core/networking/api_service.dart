import 'package:dio/dio.dart';
import 'package:pets_finder_app/features/home/data/models/pet_model.dart';
import 'package:retrofit/retrofit.dart';

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
