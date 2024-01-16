import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_tiin_web/screens/tabs/experience.dart';
import 'package:portfolio_tiin_web/screens/tabs/from_me.dart';
import 'package:portfolio_tiin_web/screens/tabs/projects.dart';
import 'package:portfolio_tiin_web/screens/tabs/skils.dart';
import 'package:portfolio_tiin_web/theme/app_text_style.dart';

class RightScreen extends StatefulWidget {
  const RightScreen({super.key});

  @override
  State<RightScreen> createState() => _RightScreenState();
}

class _RightScreenState extends State<RightScreen> {
  PageController pCon = PageController();
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.13,
          color: const Color(0xff24616b),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                barButtons("PROJECT", () {
                  pCon.jumpToPage(0);
                }),
                barButtons("EXPERIENCE", () {
                  pCon.jumpToPage(1);
                }),
                barButtons("BOOKING", () {
                  pCon.jumpToPage(2);
                }),
                barButtons("ABOUT", () {
                  pCon.jumpToPage(3);
                }),
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.87,
          width: MediaQuery.of(context).size.width * 0.5,
          child: Stack(
            children: [
              PageView(
                controller: pCon,
                children: const [
                  FirstScreen(),
                  ExperienceScreen(sizeTxt: 0.4),
                  SkillsScreen(),
                  FromMeScreen(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  barButtons(
    String text,
    VoidCallback onpres,
  ) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.13,
        // width: 200,
        child: TextButton(
          onPressed: onpres,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
            ),
          ),
          child: Text(
            text,
            style: AppTextStyle.title().copyWith(
              fontSize:10.h,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: "Montserrat",
            ),
          ),
        ),
      ),
    );
  }
}
