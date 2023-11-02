// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomTextField2 extends StatelessWidget {
  const CustomTextField2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: const [
          SizedBox(
            height: 100,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Email Address',
              style: TextStyle(
                color: Color(0xFF2B2B2B),
                fontSize: 16,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
                height: 0.08,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
