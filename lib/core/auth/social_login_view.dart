import 'package:chat_app_waleed/constants/ui_constants.dart';
import 'package:chat_app_waleed/core/auth/auth_controller.dart';
import 'package:chat_app_waleed/utils/utils.dart';
import 'package:chat_app_waleed/widgets/primary_button.dart';
import 'package:chat_app_waleed/widgets/seperator.dart';
import 'package:chat_app_waleed/widgets/social_login_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocialLoginView extends StatelessWidget {
  const SocialLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    setUiMode(isFullScreen: true);
    return WillPopScope(
      onWillPop: () async {
        setUiMode(isFullScreen: false);
        return true;
      },
      child: GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Connect friends easily & quickly',
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(color: Colors.white),
                    ),
                    Text(
                      'Our chat app is the perfect way to stay connected with friends and family.',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
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
                        ),
                      ],
                    ),
                    const Separator(),
                    PrimaryButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white30,
                      ),
                      onTap: () {
                        controller.offToSignUpView();
                      },
                      child: Text(
                        'Sign up with mail',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: Colors.white),
                        children: [
                          const TextSpan(text: "Existing account?  "),
                          TextSpan(
                            text: "Log in",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                controller.offToLoginView();
                              },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
