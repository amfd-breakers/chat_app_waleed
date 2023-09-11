import 'package:chat_app_waleed/core/home/home_view.dart';
import 'package:chat_app_waleed/themes/dark_theme.dart';
import 'package:chat_app_waleed/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const HomeView(),
    );
  }
}
