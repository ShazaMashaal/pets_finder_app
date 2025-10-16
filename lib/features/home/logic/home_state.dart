import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_finder_app/features/home/data/models/breed_model.dart';

import '../../../core/networking/api_error_handler.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Specializations
  const factory HomeState.breedsLoading() = BreedsLoading;

  const factory HomeState.breedsSuccess(List<BreedModel?>? breedsList) =
      BreedsSuccess;

  const factory HomeState.breedsError(ErrorHandler errorHandler) = BreedsError;
}
