import 'package:chat_app_waleed/core/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Theme.of(Get.context!).primaryColor,
      ),
    );
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Get.offAll(
        () => const HomeView(),
      ),
    );
  }

  @override
  void onClose() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor:
            Theme.of(Get.context!).scaffoldBackgroundColor,
      ),
    );
    super.onClose();
  }
}
