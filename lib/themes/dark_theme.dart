import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Color textColor = Colors.white;
Color primaryColor = Colors.deepPurple;

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x0043116a)),
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: AppBarTheme(
    elevation: 0,
    color: Colors.grey.shade900,
    titleTextStyle: TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: Size(1.sw, 60.h),
      disabledBackgroundColor: Colors.white.withOpacity(.37),
      disabledForegroundColor: textColor,
      foregroundColor: textColor,
      backgroundColor: primaryColor,
      padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 6.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
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
  ),
);
