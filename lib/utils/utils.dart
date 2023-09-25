import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

void updateNavigationColor({bool isPrimary = true}) async {
  if (Get.context == null) return;
  await Future.delayed(300.ms);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: isPrimary
          ? Theme.of(Get.context!).primaryColor
          : Theme.of(Get.context!).scaffoldBackgroundColor,
    ),
  );
}

Future<void> setUiMode({bool isFullScreen = true}) async {
  if (Get.context == null) return;
  if (isFullScreen) {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: []);
  } else {
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
    );
  }
}
