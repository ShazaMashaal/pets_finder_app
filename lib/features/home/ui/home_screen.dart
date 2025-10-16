import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_finder_app/features/home/ui/widgets/custom_bottom_nav_bar.dart';
import 'package:pets_finder_app/features/home/ui/widgets/pets_list.dart';
import 'package:pets_finder_app/features/home/ui/widgets/search_widget.dart';
import '../../../core/helpers/spacing.dart';
import 'widgets/categories_section.dart';
import 'widgets/title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  VerticalSpace(30),
                  TitleWidget(
                    title: "Find Your Forever Pet",
                    icon: SvgPicture.asset(
                      "assets/svgs/notifications_icon.svg",
                    ),
                  ),
                  VerticalSpace(20),
                  SearchWidget(),
                  VerticalSpace(20),
                  CategoriesSection(),
                  VerticalSpace(23),
                ],
              ),
            ),
            Expanded(child: PetsList()),
          ],
        ),
      ),
    );
  }
}
