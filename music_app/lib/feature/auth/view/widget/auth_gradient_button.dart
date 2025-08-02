import 'package:flutter/material.dart';
import 'package:music_app/core/constant/app_color.dart';

class AuthGradientButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const AuthGradientButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColor.gradient1, AppColor.gradient2],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          fixedSize: Size(395, 55),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(30),
          // ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
