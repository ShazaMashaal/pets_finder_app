import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_finder_app/core/helpers/extensions.dart';
import 'package:pets_finder_app/core/helpers/spacing.dart';
import 'package:pets_finder_app/core/widgets/app_text_button.dart';
import '../../core/routing/routes.dart';
import '../../core/theming/styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 26.h),
            child: Column(
              children: [
                Image.asset("assets/images/onboarding_image.png"),
                verticalSpace(70),
                Text(
                  "Find Your Best Companion With Us",
                  style: TextStyles.font32BlackBold,
                  textAlign: TextAlign.center,
                ),
                verticalSpace(10),
                Text(
                  "Join & discover the best suitable pets as per your preferences in your location",
                  style: TextStyles.font16GreyRegular,
                  textAlign: TextAlign.center,
                ),
                verticalSpace(60),
                AppTextButton(
                  buttonText: "Get started",
                  borderRadius: 30.r,
                  buttonWidth: 297,
                  icon: SvgPicture.asset("assets/svgs/pet_icon.svg"),
                  onPressed: () => context.pushNamed(Routes.homeScreen),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
