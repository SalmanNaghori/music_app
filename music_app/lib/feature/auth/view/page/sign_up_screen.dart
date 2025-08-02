import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/constant/app_color.dart';
import 'package:music_app/core/constant/app_string.dart';
import 'package:music_app/feature/auth/view/widget/auth_gradient_button.dart';
import 'package:music_app/feature/auth/view/widget/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //controller
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.backgroundColor),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(20),
              children: [
                Text(
                  AppString.signUp,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.whiteColor,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextfield(
                  controller: nameController,
                  hintText: AppString.nameHint,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 20),
                CustomTextfield(
                  controller: emailController,
                  hintText: AppString.emailHint,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 20),
                CustomTextfield(
                  controller: passwordController,
                  hintText: AppString.passwordHint,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(height: 20),
                AuthGradientButton(text: AppString.signUp, onPressed: () {}),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: TextStyle(color: AppColor.whiteColor, fontSize: 16),
                    children: [
                      TextSpan(
                        text: AppString.signIn,
                        style: TextStyle(
                          color: AppColor.gradient1,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                // Navigate to Sign In Screen
                              },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
