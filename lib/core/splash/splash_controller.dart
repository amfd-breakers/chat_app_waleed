import 'package:chat_app_waleed/core/home/home_view.dart';
import 'package:chat_app_waleed/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    updateNavigationColor(isPrimary: true);
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Get.offAll(
        () => const HomeView(),
      ),
    );
  }

  @override
  void onClose() {
    updateNavigationColor(isPrimary: false);
    super.onClose();
  }
}
