import 'package:chat_app_waleed/core/auth/sign_up_view.dart';
import 'package:chat_app_waleed/core/splash/splash_view.dart';
import 'package:chat_app_waleed/themes/dark_theme.dart';
import 'package:chat_app_waleed/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'TextIt',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: ThemeMode.light,
          home: const SplashView(),
        );
      },
    );
  }
}
