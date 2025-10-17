import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_finder_app/features/home/data/models/breed_model.dart';
import 'package:pets_finder_app/features/home/data/models/pet_model.dart';

import '../../../core/networking/api_error_handler.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Breeds state
  const factory HomeState.breedsLoading() = BreedsLoading;
  const factory HomeState.breedsSuccess(List<BreedModel?>? breedsList) =
      BreedsSuccess;
  const factory HomeState.breedsError(ErrorHandler errorHandler) = BreedsError;

  // Pets State
  const factory HomeState.petsLoading() = PetsLoading;
  const factory HomeState.petsSuccess(List<PetModel?>? petsList) = PetsSuccess;
  const factory HomeState.petsError(ErrorHandler errorHandler) = PetsError;
}
