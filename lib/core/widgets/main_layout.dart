import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_finder_app/core/theming/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Screens
import 'package:pets_finder_app/features/home/ui/home_screen.dart';
import 'package:pets_finder_app/features/favorites/ui/favorites_screen.dart';

import '../../features/favorites/logic/favorites_cubit.dart';
import '../../features/home/logic/home_cubit.dart';
import '../../features/messages/messages_screen.dart';
import '../../features/profile/profile_screen.dart';
import '../di/dependency_injection.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    BlocProvider(
      create: (_) => HomeCubit(getIt())..getBreeds(),
      child: const HomeScreen(),
    ),
    BlocProvider(
      create: (_) => FavoritesCubit(getIt())..getFavorites(),
      child: const FavoritesScreen(),
    ),
    const MessagesScreen(),
    ProfileScreen(),
  ];

  final List<Map<String, dynamic>> items = [
    {"icon": "assets/svgs/home_icon.svg", "label": "Home"},
    {"icon": "assets/svgs/heart_icon.svg", "label": "Favorite"},
    {"icon": "assets/svgs/messages_icon.svg", "label": "Messages"},
    {"icon": "assets/svgs/profile-icon.svg", "label": "Profile"},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 76.h,
        padding: EdgeInsets.symmetric(horizontal: 50.w),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: ColorsManager.black.withAlpha((255 * .05).round()),
              blurRadius: 4.r,
              offset: const Offset(0, -4),
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
                      colorFilter: const ColorFilter.mode(
                        Colors.grey,
                        BlendMode.srcIn,
                      ),
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
      ),
    );
  }
}
