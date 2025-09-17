import 'package:flutter/material.dart';
import 'package:training_task/Style/app_colors.dart';
import 'package:training_task/Style/app_styles.dart';

class AppThem {
  static final lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.mainColor,
      foregroundColor: AppColors.blackColor,
    ),
    primaryColor: AppColors.whiteColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.whiteColor,
    textTheme: TextTheme(titleLarge: AppStyles.primarystyle),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.mainColor),
        textStyle: WidgetStatePropertyAll(AppStyles.primarystyle),
      ),
    ),
  );
  static final darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.mainColor,
      foregroundColor: AppColors.whiteColor,
      titleTextStyle: AppStyles.primarystyle.copyWith(
        color: AppColors.blackColor,
      ),
    ),
    primaryColor: AppColors.blackColor,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.blackColor,
    textTheme: TextTheme(
      titleLarge: AppStyles.primarystyle.copyWith(color: AppColors.whiteColor),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.mainColor),
        textStyle: WidgetStatePropertyAll(
          AppStyles.primarystyle.copyWith(color: AppColors.whiteColor),
        ),
      ),
    ),
  );
}
