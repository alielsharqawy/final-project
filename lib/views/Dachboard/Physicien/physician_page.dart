// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:supmind/views/dashbord_page.dart';
import 'package:supmind/views/Dachboard/Physicien/physician_form.dart';
import 'package:supmind/views/navigitionbar.dart';
import 'package:supmind/widgets/dashboard/Doctors/doctor_category.dart';

import '../../../utlis/app_colors.dart';

class PhysicianPage extends StatelessWidget {
  const PhysicianPage({super.key});
  static String id = 'PhysicianPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: const Text(
          'Physicians',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, NavigationBarButton.id);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, PhysicianFormPage.id);
              },
              icon: const Icon(
                FontAwesomeIcons.penToSquare,
                color: Colors.black,
                size: 25,
              ))
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              DoctorCategory(),
              SizedBox(
                height: 20,
              ),
              DoctorCategory(),
              SizedBox(
                height: 20,
              ),
              DoctorCategory(),
              SizedBox(
                height: 20,
              ),
              DoctorCategory(),
              SizedBox(
                height: 20,
              ),
              DoctorCategory(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
