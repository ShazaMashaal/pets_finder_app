import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_finder_app/core/networking/api_result.dart';
import 'package:pets_finder_app/features/home/data/models/pet_model.dart';
import 'package:pets_finder_app/features/pet_details/data/repos/pet_details_repo.dart';

import 'pet_details_state.dart';

class PetDetailsCubit extends Cubit<PetDetailsState> {
  final PetDetailsRepo _petDetailsRepo;
  PetDetailsCubit(this._petDetailsRepo) : super(PetDetailsState.initial());
  late PetModel petDetails;

  void getPetDetails(String id) async {
    emit(const PetDetailsState.loading());
    final response = await _petDetailsRepo.getPetDetails(id);
    response.when(
      success: (petModel) {
        petDetails = petModel;

        emit(PetDetailsState.success(petModel));
      },
      failure: (errorHandler) {
        emit(
          PetDetailsState.error(
            errorHandler.apiErrorModel.message ?? "Something Went Wrong",
          ),
        );
      },
    );
  }
}
