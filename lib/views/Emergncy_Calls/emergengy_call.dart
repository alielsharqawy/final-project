import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/Emergancycalls/person_category.dart';
import 'add_call.dart';

class EmergencyCallPage extends StatelessWidget {
  const EmergencyCallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: const Text(
          'Emergency Contact',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AddCallPage.id);
              },
              icon: const Icon(
                FontAwesomeIcons.userPlus,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            PersonCategory(
              personName: 'Ahmed Mar3y',
              personNumber: '0123456789',
            ),
            SizedBox(height: 20),
            PersonCategory(
              personName: 'Ahmed Mar3y',
              personNumber: '0123456789',
            ),
            SizedBox(height: 20),
            PersonCategory(
              personName: 'Ahmed Mar3y',
              personNumber: '0123456789',
            ),
            SizedBox(height: 20),
            PersonCategory(
              personName: 'Ahmed Mar3y',
              personNumber: '0123456789',
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
