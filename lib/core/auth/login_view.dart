import 'package:chat_app_waleed/constants/ui_constants.dart';
import 'package:chat_app_waleed/core/auth/auth_controller.dart';
import 'package:chat_app_waleed/utils/validators.dart';
import 'package:chat_app_waleed/widgets/primary_button.dart';
import 'package:chat_app_waleed/widgets/seperator.dart';
import 'package:chat_app_waleed/widgets/social_login_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              children: [
                SizedBox(height: 40.h),
                Text(
                  'Log in to Chatbox',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.h),
                Text(
                  'Welcome back! Sign in using your social account or email to continue us',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: 16.sp),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 25.h),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialLoginButton(
                      assetPath: 'assets/icons/facebook.png',
                    ),
                    SocialLoginButton(
                      assetPath: 'assets/icons/google.png',
                    ),
                    SocialLoginButton(
                      assetPath: 'assets/icons/apple.png',
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(height: 25.h),
                const Separator(
                  seperatorColor: Colors.black45,
                ),
                SizedBox(height: 25.h),
                Form(
                  key: controller.loginFormValidator,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: emailValidator,
                        controller: controller.emailController,
                        decoration: InputDecoration(
                          label: Text(
                            'Your Email',
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          hintStyle:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 16,
                                  ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      TextFormField(
                        controller: controller.passwordController,
                        validator: (value) {
                          return emptyCheckValidator(value,
                              errorText: 'Password is required');
                        },
                        decoration: InputDecoration(
                          label: Text(
                            'Password',
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          hintStyle:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 16,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                ),
                SizedBox(height: 160.h),
                PrimaryButton(
                  onTap: () {},
                  isLoading: true,
                  child: Text(
                    'Login',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                SizedBox(height: 10.h),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Dont't have an account? ",
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: [
                        TextSpan(
                            text: 'Sign Up',
                            style: Theme.of(context).textTheme.bodyLarge,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                controller.gotoSignUpView();
                              }),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
