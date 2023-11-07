import 'package:flutter/material.dart';
import 'package:supmind/models/dashboard_category_model.dart';

import '../../../utlis/app_colors.dart';

class ControlerCard extends StatelessWidget {
  const ControlerCard({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 189,
      height: 121,
      decoration: ShapeDecoration(
        color: const Color(0xFFF7F7F8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 5,
            ),
            Icon(
              category.iconData,
              size: 30,
            ),
            Text(
              category.title,
              style: TextStyle(
                color: Color(0xFF0F0F0F),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              category.subTitle,
              style: TextStyle(
                color: AppColors.greyForIcon,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
