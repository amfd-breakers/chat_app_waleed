import 'package:chat_app_waleed/core/auth/login_view.dart';
import 'package:chat_app_waleed/core/auth/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  AuthController();

  GlobalKey<FormState> loginFormValidator = GlobalKey<FormState>();
  GlobalKey<FormState> signUpFormValidator = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
      print('Form is valid');
    }
  }
}
