import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supmind/utlis/app_colors.dart';
import 'package:supmind/utlis/app_style.dart';
import 'package:supmind/widgets/Home/locattion&date.dart';
import 'package:supmind/widgets/Home/weather_category.dart';
import 'package:supmind/widgets/Home/welcom_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            WelcomCategory(),
            SizedBox(
              height: 15,
            ),
            LocationDateCetegory(),
            SizedBox(
              height: 20,
            ),
            WeatherCategory(),
          ],
        ),
      ),
    );
  }
}
