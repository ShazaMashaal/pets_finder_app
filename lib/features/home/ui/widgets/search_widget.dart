import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_finder_app/core/theming/styles.dart';

import '../../../../core/theming/colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyles.font16GreyRegular.copyWith(color: ColorsManager.black),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 9.h),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorsManager.black.withAlpha(70)),
          borderRadius: BorderRadius.circular(12.r),
        ),
        filled: true,
        fillColor: ColorsManager.lightGrey,
        hintText: "Search",
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 11.h),
          child: SvgPicture.asset(
            "assets/svgs/search_icon.svg",
            height: 20.h,
            width: 20.w,
          ),
        ),
        hintStyle: TextStyles.font16GreyRegular,
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 11.h),
          child: SvgPicture.asset(
            "assets/svgs/filter_icon.svg",
            height: 20.h,
            width: 20.w,
          ),
        ),
      ),
    );
  }
}
