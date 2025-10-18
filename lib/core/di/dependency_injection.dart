import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pets_finder_app/features/home/data/repos/home_repo.dart';
import 'package:pets_finder_app/features/home/logic/home_cubit.dart';
import 'package:pets_finder_app/features/pet_details/logic/pet_details_cubit.dart';
import '../../features/favorites/data/repos/favorites_repo.dart';
import '../../features/favorites/logic/favorites_cubit.dart';
import '../../features/pet_details/data/repos/pet_details_repo.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //
  // home
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));

  //pet details screen
  getIt.registerLazySingleton<PetDetailsRepo>(() => PetDetailsRepo(getIt()));
  getIt.registerLazySingleton<PetDetailsCubit>(() => PetDetailsCubit(getIt()));

  //favorites screen

  getIt.registerLazySingleton<FavoritesRepo>(() => FavoritesRepo(getIt()));
  getIt.registerLazySingleton<FavoritesCubit>(() => FavoritesCubit(getIt()));
}
