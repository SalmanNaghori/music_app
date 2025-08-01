import 'package:flutter/material.dart';
import 'package:music_app/core/constant/app_color.dart';
import 'package:music_app/feature/auth/view/widget/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //controller
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
                  "SignUp",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.whiteColor,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextfield(),
                const SizedBox(height: 20),
                CustomTextfield(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
