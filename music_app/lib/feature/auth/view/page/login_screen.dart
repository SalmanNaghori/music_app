import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:music_app/core/constant/app_color.dart';
import 'package:music_app/core/constant/app_string.dart';
import 'package:music_app/feature/auth/view/widget/auth_gradient_button.dart';
import 'package:music_app/feature/auth/view/widget/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.backgroundColor),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                children: [
                  Text(
                    AppString.signIn,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor.whiteColor,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
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
                  AuthGradientButton(text: AppString.signIn, onPressed: () {}),
                  const SizedBox(height: 20),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: AppString.dontHaveAanAccount,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColor.whiteColor,
                      ),
                      children: [
                        TextSpan(
                          text: AppString.signUp,
                          style: TextStyle(
                            color: AppColor.gradient2,
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
      ),
    );
  }
}
