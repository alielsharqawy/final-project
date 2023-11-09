import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utlis/app_colors.dart';
import '../../../utlis/app_style.dart';

class SensorCategory extends StatelessWidget {
  const SensorCategory(
      {super.key,
      required this.sensorName,
      required this.sensorCondition,
      required this.sensorIcon,
      required this.conditionTxtColor,
      required this.sensorIconColor});
  final String sensorName;
  final String sensorCondition;
  final IconData sensorIcon;
  final Color conditionTxtColor;
  final Color sensorIconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFEAECF0)),
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0F222C5C),
            blurRadius: 68,
            offset: Offset(58, 26),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sensorName,
                  style: AppStyles.s18.copyWith(
                    color: AppColors.blackForText,
                  ),
                ),
                Text(
                  sensorCondition,
                  style: GoogleFonts.raleway(
                    color: conditionTxtColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Icon(
              sensorIcon,
              color: sensorIconColor,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}
