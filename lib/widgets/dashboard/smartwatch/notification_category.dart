import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supmind/helper/componants/icon_box.dart';
import 'package:supmind/widgets/dashboard/smartwatch/switch_button.dart';

import 'notification_text.dart';

class NotificationCategory extends StatelessWidget {
  const NotificationCategory(
      {super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: ShapeDecoration(
        color: const Color(0xFFF7F7F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconBox(
            icon: icon,
          ),
          NotifiCategoryTxt(
            text: text,
          ),
          SwitchButton(),
        ],
      ),
    );
  }
}
