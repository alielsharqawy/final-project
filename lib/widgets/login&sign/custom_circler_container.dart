// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCireclerContainer extends StatelessWidget {
  const CustomCireclerContainer({
    super.key,
    required this.imageIcon,
  });
  final String imageIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            // border: Border.all(color: AppColors.primaryColor, width: 2),
          ),
          child: SvgPicture.asset(
            imageIcon,
            height: 20,
            width: 20,
          )),
    );
  }
}
