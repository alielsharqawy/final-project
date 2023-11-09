import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supmind/utlis/app_colors.dart';
import 'package:supmind/widgets/Emergancycalls/add_call_card.dart';

import '../../helper/componants/custom_button.dart';
import '../../helper/componants/icon_box.dart';

class AddCallPage extends StatelessWidget {
  const AddCallPage({super.key});
  static String id = 'AddCallPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: Text(
          'Add Contant',
          style: GoogleFonts.raleway(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          AddCallCard(),
          SizedBox(
            height: 30,
          ),
          CustomButton(
            hight: 50,
            width: 225,
            color: AppColors.primaryColor,
            bordrerRadius: 20,
            fontSize: 20,
            onTap: () {},
            text: 'Add Contact',
          )
        ],
      ),
    );
  }
}
