import 'package:chat_app_waleed/constants/ui_constants.dart';
import 'package:chat_app_waleed/core/auth/auth_controller.dart';
import 'package:chat_app_waleed/utils/validators.dart';
import 'package:chat_app_waleed/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        init: AuthController(),
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {},
              ),
            ),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              children: [
                SizedBox(height: 40.h),
                Text(
                  'Sign up with mail ',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.h),
                Text(
                  "Get chatting with friends and family today by signing up for our chat app!",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: 18.sp),
                ),
                SizedBox(height: 25.h),
                Form(
                  key: controller.signUpFormValidator,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controller.nameController,
                        validator: nameValidator,
                        decoration: InputDecoration(
                          label: Text(
                            'Your name',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(fontSize: 16),
                          ),
                          hintStyle:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 17,
                                  ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      TextFormField(
                        controller: controller.emailController,
                        validator: emailValidator,
                        decoration: InputDecoration(
                          label: Text(
                            'your email',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(fontSize: 16),
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
                        validator: passwordValidator,
                        decoration: InputDecoration(
                          label: Text(
                            'Password',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(fontSize: 16),
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
                        controller: controller.confirmPasswordController,
                        validator: (confirmPasswordText) {
                          return confirmPasswordValidator(
                            confirmPasswordText,
                            controller.passwordController.text,
                          );
                        },
                        decoration: InputDecoration(
                          label: Text(
                            'Confirm password',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(fontSize: 16),
                          ),
                          hintStyle:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 16,
                                  ),
                        ),
                      ),
                      SizedBox(height: 170.h),
                    ],
                  ),
                ),
                PrimaryButton(
                  onTap: controller.signUp,
                  child: Text(
                    'Create a account',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
