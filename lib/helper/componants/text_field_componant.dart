// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import '../../utlis/app_style.dart';
import '../../widgets/login&sign/custom_text_field.dart';

class TextFieldComponant extends StatelessWidget {
  TextFieldComponant(
      {super.key,
      required this.headLine,
      required this.hentText,
      this.iconData});
  final String headLine;
  final String hentText;
  IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            headLine,
            style: AppStyles.s16,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          text: hentText,
          iconData: iconData,
        ),
      ],
    );
  }
}
