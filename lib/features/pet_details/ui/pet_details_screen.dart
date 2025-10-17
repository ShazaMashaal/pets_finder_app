import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets_finder_app/core/helpers/spacing.dart';
import 'package:pets_finder_app/core/widgets/app_text_button.dart';
import 'package:pets_finder_app/features/pet_details/logic/pet_details_cubit.dart';
import 'package:pets_finder_app/features/pet_details/logic/pet_details_state.dart';
import 'package:pets_finder_app/features/pet_details/ui/widgets/pet_image.dart';

import 'widgets/name_and_price.dart';
import 'widgets/pet_description.dart';
import 'widgets/pet_specifications.dart';

class PetDetailsScreen extends StatelessWidget {
  final String id;
  const PetDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<PetDetailsCubit, PetDetailsState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: state.when(
                      initial: () => const Center(child: Text('Initial State')),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      success: (petModel) {
                        return Column(
                          children: [
                            PetImage(url: petModel.url ?? ""),

                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 17.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  VerticalSpace(23.h),
                                  NameAndPrice(
                                    name: petModel.breeds![0].name ?? "",
                                  ),
                                  VerticalSpace(20.h),
                                  PetSpecifications(),
                                  VerticalSpace(20.h),
                                  PetDescription(
                                    text: petModel.breeds![0].description ?? "",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      error: (error) => Center(child: Text('Error: $error')),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 35.h,
                    horizontal: 30.w,
                  ),
                  child: AppTextButton(
                    buttonText: "Adopt me",
                    onPressed: () {},
                    borderRadius: 30.r,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
