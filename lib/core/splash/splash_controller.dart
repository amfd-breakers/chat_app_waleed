import 'package:chat_app_waleed/core/auth/social_login_view.dart';
import 'package:chat_app_waleed/core/home/home_view.dart';
import 'package:chat_app_waleed/utils/utils.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    updateNavigationColor(isPrimary: true);
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Get.offAll(
        () => const SocialLoginView(),
      ),
    );
  }

  @override
  void onClose() {
    updateNavigationColor(isPrimary: false);
    super.onClose();
  }
}
