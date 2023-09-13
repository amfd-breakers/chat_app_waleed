import 'package:chat_app_waleed/core/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () => Get.to(() => const SplashView()),
          child: const Text('Textit'),
        ),
      ),
    );
  }
}
