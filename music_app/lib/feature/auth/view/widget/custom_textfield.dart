import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextStyleTween? style;
  final bool obscureText;
  const CustomTextfield({
    super.key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.style,
  });

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        labelText: widget.hintText ?? "",
        border: OutlineInputBorder(),
      ),
      style: TextStyle(color: Colors.black),
      cursorColor: Colors.blue,
    );
  }
}
