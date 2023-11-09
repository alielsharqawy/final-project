import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supmind/helper/componants/custom_button.dart';
import 'package:supmind/utlis/app_colors.dart';
import 'package:supmind/utlis/app_style.dart';
import 'package:supmind/widgets/dashboard/smartwatch/notification_category.dart';

import '../../helper/componants/text_field_componant.dart';
import '../../widgets/dashboard/smartwatch/device_box.dart';
import '../../widgets/dashboard/smartwatch/smart_watch_button.dart';

class SmartWatchPage extends StatelessWidget {
  const SmartWatchPage({super.key});
  static String id = "SmartWatchPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: Text(
          'Smart watch control',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            ConnectDeviceBox(),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              hight: 40,
              width: 150,
              color: AppColors.primaryColor,
              text: 'Connect ',
              onTap: () {},
              bordrerRadius: 10,
              fontSize: 18,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Manage Notifications',
              style: AppStyles.s18.copyWith(
                color: AppColors.blackForText,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const NotificationCategory(
              icon: FontAwesomeIcons.solidCalendarCheck,
              text: 'Medication Appointment',
            ),
            const SizedBox(
              height: 20,
            ),
            const NotificationCategory(
              icon: FontAwesomeIcons.cloud,
              text: 'Weather Condition',
            ),
            const SizedBox(
              height: 20,
            ),
            const NotificationCategory(
              icon: FontAwesomeIcons.heartPulse,
              text: 'Heart Rate ',
            ),
            const SizedBox(
              height: 20,
            ),
            const NotificationCategory(
              icon: FontAwesomeIcons.fire,
              text: 'Sensors Data ',
            ),
            const SizedBox(
              height: 40,
            ),
            const SmartWatchButton(
              text: 'Current Location    ',
              icon: FontAwesomeIcons.locationCrosshairs,
            )
          ],
        ),
      ),
    );
  }
}
