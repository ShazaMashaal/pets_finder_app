import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_finder_app/core/helpers/extensions.dart';
import 'package:pets_finder_app/core/helpers/spacing.dart';
import 'package:pets_finder_app/core/theming/colors.dart';
import 'package:pets_finder_app/core/theming/styles.dart';

import '../../../../core/routing/routes.dart';
import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';

class PetsList extends StatelessWidget {
  const PetsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is PetsLoading ||
          current is PetsSuccess ||
          current is PetsError,
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const Center(child: Text('Initial State')),
          petsLoading: () => const Center(child: CircularProgressIndicator()),
          petsSuccess: (pets) {
            return ListView.builder(
              itemCount: pets?.length ?? 0,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  context.pushNamed(
                    Routes.petDetailsScreen,
                    arguments: pets[index]?.id,
                  );
                },
                child: Container(
                  height: 124.h,
                  padding: EdgeInsets.symmetric(
                    vertical: 6.h,
                    horizontal: 10.w,
                  ),

                  margin: EdgeInsetsDirectional.only(
                    bottom: 12.h,
                    end: 16.w,
                    start: 16.w,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: .5.r,
                        blurRadius: 4.r,
                        color: Colors.black.withAlpha((255 * .1).round()),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 112.h,
                            width: 122.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: ColorsManager.lightGreen,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(8.r),
                              child: Image.network(
                                pets![index]?.url ?? "",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          HorizontalSpace(16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Joli", style: TextStyles.font18BlackBold),
                              Text(
                                "Female",
                                style: TextStyles.font16GreyRegular.copyWith(
                                  fontSize: 14.sp,
                                ),
                              ),
                              Text(
                                "5 Months Old",
                                style: TextStyles.font16GreyRegular.copyWith(
                                  fontSize: 14.sp,
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(
                                    "assets/svgs/location_icon.svg",
                                  ),
                                  HorizontalSpace(4),
                                  Text(
                                    '1.6 km away',
                                    style: TextStyles.font16GreyRegular
                                        .copyWith(fontSize: 14.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsGeometry.directional(
                          top: 12.h,
                          end: 10.w,
                        ),
                        child: SvgPicture.asset("assets/svgs/heart_icon.svg"),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
