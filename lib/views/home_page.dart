import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supmind/widgets/Home/checkbox_routine.dart';
import 'package:supmind/widgets/Home/clothes_category.dart';
import 'package:supmind/widgets/Home/headlin_category.dart';
import 'package:supmind/widgets/Home/locattion&date.dart';
import 'package:supmind/widgets/Home/routine_card.dart';
import 'package:supmind/widgets/Home/weather_category.dart';
import 'package:supmind/widgets/Home/welcom_category.dart';

import '../helper/componants/messege_box.dart';
import '../widgets/Home/heart_rate_category.dart';
import 'navigitionbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showBlur = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const WelcomCategory(),
                  const SizedBox(
                    height: 15,
                  ),
                  const LocationDateCetegory(),
                  const SizedBox(
                    height: 20,
                  ),
                  const WeatherCategory(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Headline(headline: 'Routine'),
                  const SizedBox(
                    height: 10,
                  ),
                  const RoutineCard(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Headline(headline: 'Recommended  Clothes'),
                  const SizedBox(
                    height: 10,
                  ),
                  const ClothesCategory(),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    child: const HeartRateCategory(),
                    onTap: () {
                      setState(() {
                        showBlur = true;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Headline(headline: 'Routine Condition'),
                  const SizedBox(
                    height: 2,
                  ),
                  const CheckBoxRoutine(),
                  const CheckBoxRoutine(),
                  const CheckBoxRoutine(),
                  const CheckBoxRoutine(),
                ],
              ),
            ),
          ),
        ),
        if (showBlur)
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0.2),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, NavigationBarButton.id);
                    },
                    child: const MessegeBox(
                      iconData: FontAwesomeIcons.heartCircleCheck,
                      message: 'Your heart rate is 75',
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
