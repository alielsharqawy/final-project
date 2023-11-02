import 'package:flutter/material.dart';
import 'package:supmind/utlis/app_colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: AppColors.blackForText,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 25,
        ),
        hintText: text,
        hintStyle: const TextStyle(
          color: Color(0xFF6A6A6A),
        ),
        filled: true,
        fillColor: Color(0xFFF6F6F8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
      onChanged: (value) {},
    );
  }
}
