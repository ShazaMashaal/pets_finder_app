import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_finder_app/core/routing/routes.dart';
import 'package:pets_finder_app/core/theming/colors.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // context.pushNamed(items[index]["route"]);
    });
  }

  List<Map<String, dynamic>> items = [
    {
      "icon": "assets/svgs/home_icon.svg",
      "route": Routes.homeScreen,
      "label": "Home",
    },
    {
      "icon": "assets/svgs/heart_icon.svg",
      "route": Routes.homeScreen,
      "label": "favourite",
    },
    {
      "icon": "assets/svgs/messages_icon.svg",
      "route": Routes.homeScreen,
      "label": "Messages",
    },
    {
      "icon": "assets/svgs/profile-icon.svg",
      "route": Routes.homeScreen,
      "label": "Profile",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76.h,
      padding: EdgeInsets.symmetric(horizontal: 50.w),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: ColorsManager.black.withAlpha((255 * .05).round()),
            blurRadius: 4.r,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: ColorsManager.blueGreen,
          unselectedItemColor: ColorsManager.grey,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: items
              .map(
                (item) => BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    item["icon"],
                    colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                  ),
                  activeIcon: SvgPicture.asset(
                    item["icon"],
                    colorFilter: ColorFilter.mode(
                      ColorsManager.blueGreen,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: item["label"],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
