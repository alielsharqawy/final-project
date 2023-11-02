// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 55,
      decoration: ShapeDecoration(
        color: const Color(0xFF0D6EFD),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
