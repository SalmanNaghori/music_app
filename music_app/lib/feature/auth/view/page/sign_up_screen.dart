import 'package:flutter/material.dart';
import 'package:music_app/core/constant/app_color.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColor.backgroundColor),
      body: ListView(
        children: [Text("SignUp", style: TextStyle(color: AppColor.whiteColor, fontSize: 28, fontWeight: FontWeight.bold)), Container()],
      ),
    );
  }
}
