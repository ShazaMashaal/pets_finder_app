import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pets_finder_app/core/helpers/spacing.dart';
import 'package:pets_finder_app/core/theming/colors.dart';
import 'package:pets_finder_app/core/theming/styles.dart';

import '../logic/favorites_cubit.dart';
import '../logic/favorites_state.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FavoritesCubit, FavoritesState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: Text('Initial State')),
              loading: () => Center(child: CircularProgressIndicator()),
              success: (favorites) {
                return GridView.builder(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.w,
                    vertical: 22.h,
                  ),
                  itemCount: favorites.length,
                  itemBuilder: (context, index) {
                    final favorite = favorites[index];
                    return Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.w,
                        vertical: 9.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusGeometry.circular(8.r),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.r,
                            spreadRadius: .5.r,
                            color: ColorsManager.black.withAlpha(
                              (255 * .1).round(),
                            ),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(8.r),
                              child: Image.network(favorite.image?.url ?? ""),
                            ),
                          ),
                          VerticalSpace(17.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Joli",
                                    style: TextStyles.font16BlackSemiBold,
                                  ),
                                  VerticalSpace(4),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/svgs/location_icon.svg",
                                      ),
                                      HorizontalSpace(4),
                                      Text(
                                        '1.6 km away',
                                        style: TextStyles.font16GreyRegular
                                            .copyWith(fontSize: 10.sp)
                                            .copyWith(fontSize: 14.sp),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(5.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    6.r,
                                  ),
                                  color: ColorsManager.lightGreen,
                                ),
                                child: SvgPicture.asset(
                                  "assets/svgs/fill_heart_icon.svg",
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                  ),
                );
              },
              error: (error) => Center(child: Text('Error: $error')),
            );
          },
        ),
      ),
    );
  }
}
