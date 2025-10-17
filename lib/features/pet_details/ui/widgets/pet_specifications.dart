import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pets_finder_app/core/theming/colors.dart';
import 'package:pets_finder_app/core/theming/font_weight_helper.dart';
import 'package:pets_finder_app/core/theming/styles.dart';

class PetSpecifications extends StatelessWidget {
  const PetSpecifications({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> specs = [
      {"title": "Gender", "value": "Male"},
      {"title": "Age", "value": "1 Year"},
      {"title": "Weight", "value": "10 kg"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: specs
            .map(
              (e) => Container(
                width: 90.w,
                height: 75.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusGeometry.circular(10.r),
                  color: ColorsManager.lightGreen,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      e["title"].toString(),
                      style: TextStyles.font18BlackBold.copyWith(
                        fontWeight: FontWeightHelper.medium,
                      ),
                    ),
                    Text(
                      e["value"].toString(),
                      style: TextStyles.font16GreyRegular.copyWith(
                        fontWeight: FontWeightHelper.medium,
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
