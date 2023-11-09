// ignore_for_file: prefer_const_constructors, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:supmind/constants/constants.dart';
import 'package:supmind/views/login&signUp/login_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // ignore:
  var controller = PageController();
  bool is_last = false;
  List<onboarding_items> screen = [
    onboarding_items(
      title: 'Hello To Our Market',
      image: Image.asset("assets/images/onb1.png"),
      subtitle: "Let's Start",
    ),
    onboarding_items(
      title: 'Make Your Shopping Easy ',
      image: Image.asset("assets/images/onb2.png"),
      subtitle: "Discover Other World In E-commerce",
    ),
    onboarding_items(
      title: "Let's Sign",
      image: Image.asset("assets/images/onb3.png"),
      subtitle: "",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: kPaddingMargin,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(
            0xFF1483C2,
          ),
        ),
        child: Column(
          children: [
           Text('Welcome To SuperMind', style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w700),),
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  if (index == screen.length - 1) {
                    setState(() {
                      is_last = true;
                    });
                  } else {
                    setState(
                      () {
                        is_last = false;
                      },
                    );
                  }
                },
                physics: BouncingScrollPhysics(),
                controller: controller,
                itemBuilder: (context, index) => onboarding_item(
                  screen[index],
                ),
                itemCount: screen.length,
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: screen.length,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.white,
                paintStyle: PaintingStyle.fill,
                expansionFactor: 5.0.w,
                spacing: 10.w,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            InkWell(
              onTap: (){},
              child: Text("next"),
            )
          ],
        ),
      ),
    ));
  }
}

// ignore: camel_case_types
class onboarding_items {
  late Widget image;
  late String title;
  late String subtitle;
  onboarding_items(
      {required this.title, required this.subtitle, required this.image});
}

Widget onboarding_item(onboarding_items list) => Padding(
      padding: kPaddingMargin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(child: list.image),
          ),
          Text(
            list.title,
            style: TextStyle(fontSize: 25.sp),
          ),
          SizedBox(height: 10.h),
          Text(list.subtitle),
          SizedBox(height: 100.h),
        ],
      ),
    );
