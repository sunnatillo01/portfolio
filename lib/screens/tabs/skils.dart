import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_tiin_web/theme/app_text_style.dart';

import 'package:step_progress_indicator/step_progress_indicator.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Skills",
                style: AppTextStyle.title().copyWith(
                  fontSize: 35.h,
                  color: const Color(0xff24616b),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Montserrat",
                ),
              ),
            ),
            skills("Dart", 85),
            skills("Flutter", 86),
            skills("C++", 65),
            skills("OOP", 80),
            skills("SOLID", 85),
            skills("Git", 86),
            skills("MVVM", 88),
            skills("Shelf", 87),
            skills("FireBase", 88),
            skills("WebSocket", 85),
            skills("CICD", 60),
            skills("GooglePlay", 85),
            skills("AppStore", 85),
            skills("Bloc", 91),
            skills("Provider", 90),
            skills("GetX", 85),
            skills("Local DB (Hive, Isar, ObjectBox)", 90),
            skills("GoogleMaps,", 78),
            skills("REST", 90),
            skills("PDF", 87),
          ],
        ),
      ),
    );
  }

  skills(
    String skilName,
    int percent,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 2.sp),
      child: Stack(
        children: [
          StepProgressIndicator(
            totalSteps: 100,
            currentStep: percent,
            blendMode: BlendMode.darken,
            size: MediaQuery.of(context).size.width <= 1000 ? 35 : 45,
            padding: 0,
            selectedColor: Colors.white,
            unselectedColor: Colors.white,
            roundedEdges: const Radius.circular(0),
            selectedGradientColor: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff24616b),
                Color.fromARGB(255, 37, 126, 139),
              ],
            ),
            unselectedGradientColor: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Colors.white,
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.5.sp),
            child: Text(
              skilName,
              style: AppTextStyle.title().copyWith(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
