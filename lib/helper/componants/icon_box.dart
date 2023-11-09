import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconBox extends StatelessWidget {
  const IconBox({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 50,
          width: 50,
          color: Colors.white,
          child: Icon(
            icon,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
    );
  }
}
