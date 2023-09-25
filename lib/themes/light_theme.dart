import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color textColor = Colors.black;
Color primaryColor = Colors.deepPurple;

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x0043116a)),
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    elevation: 0,
    color: Colors.white,
    titleTextStyle: TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: Size(1.sw, 60.h),
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.white,
      foregroundColor: Colors.white,
      backgroundColor: primaryColor,
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
    ),
  ),
  textTheme: TextTheme(
    bodySmall: TextStyle(
      color: textColor,
      fontSize: 12,
      fontWeight: FontWeight.w300,
    ),
    bodyMedium: TextStyle(
      color: textColor,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.w800,
    ),
    headlineLarge: TextStyle(
      color: textColor,
      fontSize: 60.sp,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: TextStyle(
      color: textColor,
      fontSize: 40.sp,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      color: textColor,
      fontSize: 30.sp,
      fontWeight: FontWeight.bold,
    ),
    labelLarge: TextStyle(
      color: textColor,
      fontSize: 28.sp,
      fontWeight: FontWeight.bold,
    ),
    labelMedium: TextStyle(
      color: textColor,
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
    ),
    labelSmall: TextStyle(
      color: textColor,
      fontSize: 20.sp,
      fontWeight: FontWeight.normal,
    ),
  ),
);
