import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.email,
    required this.hint,
    this.mLine,
    this.suffixIcon,
    this.prefixIcon,



  });

  TextEditingController email;
  String hint;
  int? mLine;
  Widget? suffixIcon;
  Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        maxLines: mLine ?? 1,
        controller: email,
        decoration: InputDecoration(
          hintText: hint,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}