import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_finder_app/core/networking/api_result.dart';
import 'package:pets_finder_app/features/home/data/models/breed_model.dart';
import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(HomeState.initial());
  List<BreedModel?>? breedsList = [];

  void getBreeds() async {
    emit(const HomeState.breedsLoading());
    final response = await _homeRepo.getBreeds();
    response.when(
      success: (breedsModelList) {
        breedsList = breedsModelList ?? [];

        emit(HomeState.breedsSuccess(breedsModelList));
      },
      failure: (errorHandler) {
        emit(HomeState.breedsError(errorHandler));
      },
    );
  }
}
