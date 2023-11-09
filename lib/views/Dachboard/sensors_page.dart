import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supmind/widgets/dashboard/smartwatch/smart_watch_button.dart';

import '../../widgets/dashboard/sensoors/sensor_category.dart';

class SensorsPage extends StatelessWidget {
  const SensorsPage({super.key});
  static String id = 'SensorsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: Text(
          'Sensors',
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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SensorCategory(
              sensorCondition: 'Dangerous Condition',
              sensorName: 'Fire Alarm Sensor',
              sensorIcon: FontAwesomeIcons.fire,
              conditionTxtColor: Color(0xFFFF0909),
              sensorIconColor: Color(0xFFFF0909),
            ),
            SizedBox(
              height: 20,
            ),
            SensorCategory(
              sensorCondition: 'Stable Condition ',
              sensorName: 'Gas Alarm Sensor',
              sensorIcon: FontAwesomeIcons.fire,
              conditionTxtColor: Color(0xFF1EC71A),
              sensorIconColor: Color(0xFF1EC71A),
            ),
            SizedBox(
              height: 20,
            ),
            SmartWatchButton(
              text: 'Connect Another Sensor  ',
              icon: FontAwesomeIcons.link,
            )
          ],
        ),
      ),
    );
  }
}
