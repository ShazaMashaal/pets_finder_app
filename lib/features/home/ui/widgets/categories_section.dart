import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets_finder_app/core/helpers/spacing.dart';
import 'package:pets_finder_app/core/theming/colors.dart';
import 'package:pets_finder_app/core/theming/styles.dart';
import 'package:pets_finder_app/features/home/ui/widgets/title_widget.dart';

import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({super.key});

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(title: "Categories"),
        VerticalSpace(15.h),
        SizedBox(
          height: 35.h,
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: Text('Initial State')),
                breedsLoading: () =>
                    const Center(child: CircularProgressIndicator()),
                breedsSuccess: (breeds) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: breeds?.length ?? 0,
                    itemBuilder: (context, index) {
                      final breed = breeds?[index];
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 7.h,
                          ),
                          margin: EdgeInsetsDirectional.only(end: 4.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            color: ColorsManager.lightGreen,
                          ),
                          child: Center(
                            child: Text(
                              breed?.name ?? 'No Name',
                              style: TextStyles.font14BlueGreenSemiBold,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                breedsError: (error) => Center(child: Text('Error: $error')),
              );
            },
          ),
        ),
      ],
    );
  }
}
