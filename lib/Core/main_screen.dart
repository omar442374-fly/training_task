import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:training_task/Core/info_screen.dart';
import 'package:training_task/Core/music_screen.dart';
import 'package:training_task/Core/search_screen.dart';
import 'package:training_task/Core/setting_screen.dart';
import 'package:training_task/Style/app_colors.dart';
import 'package:training_task/Style/app_styles.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 1;
  List<Widget> screens = [
    InfoScreen(),
    MusicScreen(),
    SearchScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: AppColors.secondaryColor,
        backgroundColor: AppColors.whiteColor,
        selectedLabelStyle: AppStyles.primarystyle.copyWith(fontSize: 13.r),

        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.share, size: 30), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.radio, size: 30), label: ""),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded, size: 45),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 30),
            label: "",
          ),
        ],
      ),
    );
  }
}
