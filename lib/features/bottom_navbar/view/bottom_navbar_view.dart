import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/core/style/global_textstyle.dart';


import '../../../core/const/app_colors.dart';

import '../controller/bottom_navbar_controller.dart';

class BottomNavbar extends StatelessWidget {
  BottomNavbar({super.key});

  final BottomNavbarController controller = Get.put(BottomNavbarController());

  final List<Widget> pages = [
    Center(child: Text("Home", style: globalTextStyle(color: Colors.white),),),
    Center(child: Text("location", style: globalTextStyle(color: Colors.white),),),
    Center(child: Text("Profile", style: globalTextStyle(color: Colors.white),),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha:  0.3),
            borderRadius: BorderRadius.circular(200.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(icon: Icons.home, label: "Home", index: 0),
                _buildNavItem(icon: Icons.location_on, label: "Matches", index: 1),
                _buildNavItem(icon: Icons.person, label: "Profile", index: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    return GestureDetector(
      onTap: () {
        controller.changeIndex(index);
      },
      child: Obx(() {
        final isSelected = controller.currentIndex.value == index;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? AppColors.primaryColor : Colors.white,
            ),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? AppColors.primaryColor : Colors.white,
              ),
            ),
          ],
        );
      }),
    );
  }
}
