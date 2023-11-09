import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.hight,
      required this.width,
      required this.color,
      required this.text,
      required this.onTap,
      required this.bordrerRadius,
      required this.fontSize});
  final double hight;
  final double width;
  final Color color;
  final String text;
  final VoidCallback onTap;
  final double bordrerRadius;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: hight,
        padding: const EdgeInsets.symmetric(
          horizontal: 19.61,
          vertical: 5.16,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(bordrerRadius),
          ),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
