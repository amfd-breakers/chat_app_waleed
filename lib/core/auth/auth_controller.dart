import 'package:chat_app_waleed/core/auth/login_view.dart';
import 'package:chat_app_waleed/core/auth/sign_up_view.dart';
import 'package:chat_app_waleed/core/home/home_view.dart';
import 'package:chat_app_waleed/models/response/signup_response.dart';
import 'package:chat_app_waleed/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  GlobalKey<FormState> loginFormValidator = GlobalKey<FormState>();
  GlobalKey<FormState> signUpFormValidator = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  RxBool isSingingUp = false.obs;

  final AuthService _authService = AuthService();

  Future<void> gotoLoginView() async {
    await Get.to(() => const LoginView());
  }

  void gotoSignUpView() {
    Get.to(() => const SignUpView());
  }

  Future<void> offToLoginView() async {
    await Get.off(() => const LoginView());
  }

  Future<void> offToSignUpView() async {
    await Get.off(() => const SignUpView());
  }

  Future<void> login() async {
    if (loginFormValidator.currentState?.validate() == true) {
      print('Form is valid');
    }
  }

  Future<void> signUp() async {
    if (signUpFormValidator.currentState?.validate() == true) {
      isSingingUp.value = true;
      SignupResponse response = await _authService.signUpWithEmail(
        username: nameController.text,
        email: emailController.text,
        password: passwordController.text,
      );
      if (response.success) {
        Get.offAll(() => HomeView(
              user: response.user!,
            ));
      } else {
        Get.defaultDialog(
          title: 'Failed To SignUp',
          middleText: response.error ?? '',
        );
      }
      isSingingUp.value = false;
    }
  }
}
