import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_tiin_web/screens/tabs/experience.dart';
import 'package:portfolio_tiin_web/screens/tabs/from_me.dart';
import 'package:portfolio_tiin_web/screens/tabs/projects.dart';
import 'package:portfolio_tiin_web/screens/tabs/skils.dart';
import 'package:portfolio_tiin_web/theme/app_text_style.dart';


class Vertical extends StatefulWidget {
  const Vertical({super.key});

  @override
  State<Vertical> createState() => _VerticalState();
}

class _VerticalState extends State<Vertical> {
  PageController pCon = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                color: const Color(0xff092730).withOpacity(0.9),
                child: Row(
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.11,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Image.asset('assets/12-ai.png')),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CoderAltair Hi I'm Azizbek",
                          style: AppTextStyle.semiBold().copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: "Montserrat",
                          ),
                        ),
                        Text(
                          "I'm a mobile software engeener",
                          style: AppTextStyle.semiBold().copyWith(
                            fontSize: 6.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.1,
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
                height: MediaQuery.of(context).size.height * 0.76,
                width: MediaQuery.of(context).size.width * 1,
                child: PageView(
                  controller: pCon,
                  children: const [
                    FirstScreen(
                      bottomW: true,
                    ),
                    ExperienceScreen(
                      sizeTxt: 0.8,
                      bottomW: true,
                    ),
                    SkillsScreen(),
                    FromMeScreen(
                      isBottom: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  barButtons(
    String text,
    VoidCallback onpres,
  ) {
    return Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.13,
        child: TextButton(
          onPressed: onpres,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 16,
            ),
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
            ),
          ),
          child: Text(
            text,
            style: AppTextStyle.title().copyWith(
              fontSize: 10.h,
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
