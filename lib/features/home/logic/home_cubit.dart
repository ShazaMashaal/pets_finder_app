import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_finder_app/core/networking/api_result.dart';
import 'package:pets_finder_app/features/home/data/models/breed_model.dart';
import 'package:pets_finder_app/features/home/data/models/pet_model.dart';
import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  List<BreedModel?>? breedsList = [];
  List<PetModel>? petsList = [];
  int selectedIndex = 0;

  void getBreeds() async {
    emit(const HomeState.breedsLoading());
    final response = await _homeRepo.getBreeds();
    response.when(
      success: (breedsModelList) {
        breedsList = breedsModelList;

        getPetsByBreedId(breedsModelList[0].id);

        emit(HomeState.breedsSuccess(breedsModelList));
      },
      failure: (errorHandler) {
        emit(HomeState.breedsError(errorHandler));
      },
    );
  }

  void getPetsByBreedId(breedId) async {
    emit(HomeState.petsLoading());
    final response = await _homeRepo.getPetsByBreedId(breedId);
    response.when(
      success: (pets) {
        petsList = pets;
        emit(HomeState.petsSuccess(pets));
      },
      failure: (errorHandler) {
        emit(HomeState.breedsError(errorHandler));
      },
    );
  }

  void changeIndex(int index) {
    selectedIndex = index;
    final breedId = breedsList![index]?.id;
    emit(HomeState.breedsSuccess(breedsList));
    getPetsByBreedId(breedId);
  }
}
