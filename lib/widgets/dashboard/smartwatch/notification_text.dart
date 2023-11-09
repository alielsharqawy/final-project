import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotifiCategoryTxt extends StatelessWidget {
  const NotifiCategoryTxt({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        color: Color(0xFF0F0F0F),
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
