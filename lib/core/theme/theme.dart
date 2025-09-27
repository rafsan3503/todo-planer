import 'package:feature_first_template/core/constants/colors.dart';
import 'package:feature_first_template/core/constants/sizes.dart';
import 'package:feature_first_template/core/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppThemeData {
  const AppThemeData._();

  static ThemeData appDarkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.appBackgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.appBackgroundColor,
      scrolledUnderElevation: 0,
    ),
    bottomAppBarTheme: BottomAppBarThemeData(
      color: AppColors.appBackgroundColor,
    ),

    fontFamily: "Roboto",
    brightness: Brightness.dark,
    primaryColorDark: AppColors.appPrimaryColor,
    textTheme: AppTextTheme.appTextTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.appPrimaryColor,
        padding: EdgeInsets.symmetric(vertical: AppSizes.sm),
        textStyle: AppTextTheme.appTextTheme.titleSmall,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(AppSizes.md),
        ),
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.violet,
      iconSize: 32,
    ),
    cardColor: AppColors.appGrayColor800,
    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.defaultSize),
      ),
    ),
  );
}
