// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:supmind/constants/constants.dart';
import 'package:supmind/views/start/onboarding.dart';

class SplashScreen extends StatefulWidget {
  static String id = "SplashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    StartTimer();
  }

  // ignore: non_constant_identifier_names
  StartTimer() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OnboardingScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: kPaddingMargin,
          width: double.infinity,
          height: double.infinity,
         decoration: BoxDecoration(
          color: Color(0xFF1483C2),
         ),
        ),
      ),
    );
  }
}
