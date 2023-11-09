import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supmind/views/Dachboard/Physicien/physician_info.dart';

import '../../../helper/componants/text_field_componant.dart';
import '../../../widgets/login&sign/custom_button.dart';

class PhysicianFormPage extends StatelessWidget {
  const PhysicianFormPage({super.key});
  static String id = 'PhysicianFormPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: Text(
          'Physicians Form',
          style: GoogleFonts.raleway(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFieldComponant(
                headLine: ' Doctor’s Name',
                hentText: 'Dr/ Ahmed Slman',
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldComponant(
                headLine: ' Phone',
                hentText: '0123456789',
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldComponant(
                headLine: ' Email Address',
                hentText: 'ahmedslman@gmail.com',
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldComponant(
                headLine: ' Specialization',
                hentText: 'دكتور جراح قلوب الناس ادويها ',
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldComponant(
                headLine: ' Address',
                hentText: 'بيت بابا وماما ',
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldComponant(
                headLine: ' last visit date',
                hentText: '20/2/2020',
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldComponant(
                headLine: ' Upload prescription',
                hentText: 'upload your prescription',
                iconData: Icons.cloud_upload_rounded,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, PhysicianInfoPage.id);
                },
                text: 'Submit',
              ),
              const SizedBox(
                height: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
