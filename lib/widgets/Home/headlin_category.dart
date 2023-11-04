import 'package:flutter/material.dart';

import '../../utlis/app_colors.dart';
import '../../utlis/app_style.dart';

class Headline extends StatelessWidget {
  const Headline({super.key, required this.headline});
  final String headline;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        headline,
        style: AppStyles.s18.copyWith(
          color: AppColors.blackForText,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
