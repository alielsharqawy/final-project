// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:supmind/utlis/app_colors.dart';

// class ControlerCard extends StatelessWidget {
//   const ControlerCard({super.key, required this.category});
//     final Category category;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 189,
//       height: 121,
//       decoration: ShapeDecoration(
//         color: const Color(0xFFF7F7F7),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.only(left: 10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             SizedBox(
//               height: 8,
//             ),
//             const Icon(
//               FontAwesomeIcons.solidCalendarCheck,
//               size: 30,
//             ),
//             const Text(
//               'Appointments',
//               style: TextStyle(
//                 color: Color(0xFF0F0F0F),
//                 fontSize: 18,
//                 fontFamily: 'Raleway',
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             Text(
//               '4 appointments',
//               style: TextStyle(
//                 color: AppColors.greyForIcon,
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../models/dashboard_category_model.dart';
import '../../../utlis/app_colors.dart';

class ControlerCard extends StatelessWidget {
  final Category category;

  ControlerCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 189,
      height: 121,
      decoration: ShapeDecoration(
        color: const Color(0xFFF7F7F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 8,
            ),
            Icon(
              category.iconData,
              size: 30,
            ),
            Text(
              category.title,
              style: TextStyle(
                color: Color(0xFF0F0F0F),
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              category.subTitle,
              style: TextStyle(
                color: AppColors.greyForIcon,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
