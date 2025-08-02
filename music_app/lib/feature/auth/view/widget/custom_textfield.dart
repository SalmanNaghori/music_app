import 'package:flutter/material.dart';
import 'package:music_app/core/constant/app_color.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextStyleTween? style;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  const CustomTextfield({
    super.key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.style,
    this.keyboardType,
    this.textInputAction,
  });

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      textInputAction: widget.textInputAction ?? TextInputAction.next,
      keyboardType: widget.keyboardType ?? TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: widget.hintText ?? "",
        border: OutlineInputBorder(),
      ),
      style: TextStyle(color: AppColor.whiteColor),
      cursorColor: AppColor.gradient2,
    );
  }
}
