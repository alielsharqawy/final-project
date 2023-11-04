// class Category {
//   final IconData iconData;
//   final String title;
//   final String subTitle;

//   Category(this.iconData, this.title, this.subTitle);
// }

//  List<Category> categories = [
//   Category(FontAwesomeIcons.locationDot, 'g', 'h'),
//   Category(FontAwesomeIcons.userDoctor, 'd', 'h'),
//   Category(FontAwesomeIcons.watchmanMonitoring, 'h', 'd'),
//   Category(FontAwesomeIcons.timeline, 'd', 'j'),
//   Category(FontAwesomeIcons.calendar, 'g', 'h'),
// ];

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category {
  final IconData iconData;
  final String title;
  final String subTitle;

  Category(this.iconData, this.title, this.subTitle);
}

final List<Category> categories = [
  Category(FontAwesomeIcons.locationDot, 'g', 'h'),
  Category(FontAwesomeIcons.userDoctor, 'd', 'h'),
  Category(FontAwesomeIcons.watchmanMonitoring, 'h', 'd'),
  Category(FontAwesomeIcons.timeline, 'd', 'j'),
  Category(FontAwesomeIcons.calendar, 'g', 'h'),
];
