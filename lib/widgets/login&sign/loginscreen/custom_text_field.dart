// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:supmind/utlis/app_colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.text, this.iconData});
  final String? text;
  IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: AppColors.blackForText,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        hintText: text,
        hintStyle: const TextStyle(
          color: Color(0xFF6A6A6A),
        ),
        filled: true,
        fillColor: const Color(0xFFF6F6F8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        suffix: Icon(
          iconData,
          color: const Color(0xFF6A6A6A),
        ),
      ),
      onChanged: (value) {},
    );
  }
}
