import 'package:flutter/material.dart';

import '../../utlis/app_style.dart';
import '../../widgets/login&sign/loginscreen/custom_text_field.dart';

class TextFieldComponant extends StatelessWidget {
  const TextFieldComponant(
      {super.key, required this.headLine, required this.hentText});
  final String headLine;
  final String hentText;
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
        SizedBox(
          height: 12,
        ),
        CustomTextField(
          text: hentText,
        ),
      ],
    );
  }
}