import 'package:flutter/material.dart';

import '../../utlis/app_colors.dart';

class DividerComponant extends StatelessWidget {
  const DividerComponant({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 116,
      child: Divider(
        height: 1,
        color: AppColors.greyForText,
        indent: 0,
        endIndent: 0,
        thickness: 2,
      ),
    );
  }
}
