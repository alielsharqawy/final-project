import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supmind/models/dashboard_category_model.dart';
import 'package:supmind/views/Dachboard/appointments_page.dart';
import 'package:supmind/views/Dachboard/location_page.dart';
import 'package:supmind/views/Dachboard/Physician/physician_page.dart';
import 'package:supmind/views/Dachboard/sensors_page.dart';
import 'package:supmind/views/Dachboard/smart_watch_page.dart';

import '../../../utlis/app_colors.dart';

class ControlerCard extends StatelessWidget {
  const ControlerCard({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (category.title == 'Physician') {
          Navigator.pushNamed(context, PhysicianPage.id);
        } else if (category.title == 'Location') {
          Navigator.pushNamed(context, LocationPage.id);
        } else if (category.title == 'Appointments') {
          Navigator.pushNamed(context, AppointmentsPage.id);
        } else if (category.title == 'Smart Watch') {
          Navigator.pushNamed(context, SmartWatchPage.id);
        } else if (category.title == 'Sensors') {
          Navigator.pushNamed(context, SensorsPage.id);
        }
      },
      child: Container(
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
                style: GoogleFonts.raleway(
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
      ),
    );
  }
}
