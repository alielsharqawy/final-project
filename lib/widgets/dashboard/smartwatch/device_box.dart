import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ConnectDeviceBox extends StatelessWidget {
  const ConnectDeviceBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: ShapeDecoration(
        color: const Color(0xFFF7F7F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Connect device',
              style: GoogleFonts.raleway(
                color: Color(0xFF0F0F0F),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(FontAwesomeIcons.solidClock)
          ],
        ),
      ),
    );
  }
}
