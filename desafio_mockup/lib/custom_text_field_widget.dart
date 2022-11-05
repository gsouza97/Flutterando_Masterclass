import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String text;
  final bool obscureText;
  const CustomTextFieldWidget(
      {Key? key, required this.text, this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
        color: Colors.black.withOpacity(0.75),
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        label: Text(
          text,
          style: const TextStyle(
              color: Color(0XFF327AD9),
              fontWeight: FontWeight.w600,
              fontSize: 14),
        ),
      ),
    );
  }
}
