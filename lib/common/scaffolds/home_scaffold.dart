import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tickets_test_app/common/theme/app_colors.dart';
import 'package:tickets_test_app/common/theme/app_fonts.dart';
import 'package:tickets_test_app/generated/flutter_gen/assets.gen.dart';

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({super.key, required this.child});

  final StatefulNavigationShell child;

  @override
  Widget build(BuildContext context) {
    const colorFilter = ColorFilter.mode(AppColors.specialBlue, BlendMode.srcIn);

    return Scaffold(
      body: SafeArea(child: child),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: AppColors.grey1)),
        ),
        child: BottomNavigationBar(
          onTap: (index) => child.goBranch(index, initialLocation: index == child.currentIndex),
          currentIndex: child.currentIndex,
          backgroundColor: AppColors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.specialBlue,
          selectedLabelStyle: AppFonts.regular10.copyWith(color: AppColors.specialBlue),
          unselectedLabelStyle: AppFonts.regular10,
          unselectedItemColor: AppColors.grey6,
          items: [
            BottomNavigationBarItem(
              icon: Assets.icons.plane.svg(),
              activeIcon: Assets.icons.plane.svg(colorFilter: colorFilter),
              label: 'Авиабилеты',
            ),
            BottomNavigationBarItem(
              icon: Assets.icons.hotel.svg(),
              activeIcon: Assets.icons.hotel.svg(colorFilter: colorFilter),
              label: 'Отели',
            ),
            BottomNavigationBarItem(
              icon: Assets.icons.location.svg(),
              activeIcon: Assets.icons.location.svg(colorFilter: colorFilter),
              label: 'Короче',
            ),
            BottomNavigationBarItem(
              icon: Assets.icons.notifications.svg(),
              activeIcon: Assets.icons.notifications.svg(colorFilter: colorFilter),
              label: 'Подписки',
            ),
            BottomNavigationBarItem(
              icon: Assets.icons.profile.svg(),
              activeIcon: Assets.icons.profile.svg(colorFilter: colorFilter),
              label: 'Профиль',
            ),
          ],
        ),
      ),
    );
  }
}
