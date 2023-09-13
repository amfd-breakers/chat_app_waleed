import 'package:chat_app_waleed/core/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          body: Container(
              height: size.height,
              width: size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Image.asset(
                'assets/images/message_icon.png',
                height: 300,
                width: 300,
              )
                  .animate()
                  .fadeIn() // uses `Animate.defaultDuration`
                  .scale() // inherits duration from fadeIn
                  .move(
                      begin: const Offset(0, 200),
                      delay: 300.ms,
                      duration: 600.ms) // runs after the above w/new duration
                  .shake(
                    delay: 900.ms,
                    duration: 1000.ms,
                  ) // i
              ),
        );
      },
    );
  }
}
