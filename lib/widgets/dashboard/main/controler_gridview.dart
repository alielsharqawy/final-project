// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../models/dashboard_category_model.dart';
import 'contorler_card.dart';

class ControlGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: categories.length,
          clipBehavior: Clip.none,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return ControlerCard(category: categories[index]);
          },
        ),
      ),
    );
  }
}
