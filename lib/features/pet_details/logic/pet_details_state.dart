import 'package:freezed_annotation/freezed_annotation.dart';

import '../../home/data/models/pet_model.dart';
part 'pet_details_state.freezed.dart';

@freezed
class PetDetailsState with _$PetDetailsState {
  const factory PetDetailsState.initial() = PetDetailsInitial;
  const factory PetDetailsState.loading() = PetDetailsLoading;
  const factory PetDetailsState.success(PetModel petModel) = PetDetailsSuccess;
  const factory PetDetailsState.error(String message) = PetDetailsError;
}
