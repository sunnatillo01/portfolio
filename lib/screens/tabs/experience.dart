import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_tiin_web/screens/widgets/comments_vertical.dart';
import 'package:portfolio_tiin_web/theme/app_text_style.dart';


class ExperienceScreen extends StatelessWidget {
  final double sizeTxt;
  final bool? bottomW;
  const ExperienceScreen({super.key, required this.sizeTxt, this.bottomW});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleWorks(
            "Experience",
            'portfolio.png',
            const Color(0xff24616b),
          ),
          skillsList(
            'Smart Start School',
            "Mentor of mobile development with Flutter at Smart Start School.",
            "Mentor, Mobile (Flutter)",
            context,
            "Teaching Flutter and Dart from scratch",
            "Reviewing students' code and projects",
            "Building real mobile apps together with students",
          ),
          SizedBox(
            height: 10.sp,
          ),
          skillsList(
            'Invan LLC',
            "Integration of POS system with OFD. Online cash register, mobile and desktop applications",
            "2024 - Today",
            context,
            "Tiin Loyalty app",
            "InvanPos Desktop",
            "Icom Desktop",
          ),
          titleWorks(
            "Education",
            'portfolio.png',
            const Color.fromARGB(255, 255, 255, 255),
          ),
          educationList("Cambridge Learning Center", "IELTS 5.5"),
          educationList("PDP", "online"),
          bottomW == true ? const BottomVerticalWidget() : const Text(""),
        ],
      ),
    );
  }

  skillsList(
    String txt,
    String about,
    String date,
    BuildContext context,
    String first,
    String second,
    String third,
  ) {
    return Row(
      children: [
        SizedBox(
          width: 2.sp,
        ),
        Column(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 81, 177, 192),
                    spreadRadius: 3,
                    blurRadius: 3,
                  ),
                ],
                border: Border.all(color: const Color(0xff24616b), width: 2),
              ),
            ),
            Container(
              width: 2,
              height: 200,
              color: const Color(0xff24616b),
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 81, 177, 192),
                      spreadRadius: 3,
                      blurRadius: 2),
                ],
                border: Border.all(color: const Color(0xff24616b), width: 2),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 2.sp,
        ),
        Container(
          color: const Color(0xff24616b),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                txt,
                style: AppTextStyle.semiBold().copyWith(
                  fontSize: 15.h,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontFamily: "Montserrat",
                ),
              ),
              Text(
                date,
                style: AppTextStyle.semiBold().copyWith(
                  fontSize: 14.h,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontFamily: "Montserrat",
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * sizeTxt,
                child: Text(
                  about,
                  style: AppTextStyle.semiBold().copyWith(
                    fontSize: 15.h,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  'Tasks:',
                  style: AppTextStyle.semiBold().copyWith(
                    fontSize: 14.h,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  '*$first.\n*$second.\n*$third.\n*And Others',
                  style: AppTextStyle.semiBold().copyWith(
                    fontSize: 13.h,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  educationList(
    String txt,
    String date,
  ) {
    return Row(
      children: [
        SizedBox(
          width: 2.sp,
        ),
        Column(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 81, 177, 192),
                    spreadRadius: 3,
                    blurRadius: 3,
                  ),
                ],
                border: Border.all(color: const Color(0xff24616b), width: 2),
              ),
            ),
            Container(
              width: 2,
              height: 80,
              color: const Color(0xff24616b),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: const Color(0xff24616b),
              child: Text(
                txt,
                style: AppTextStyle.semiBold().copyWith(
                  fontSize: 15.h,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontFamily: "Montserrat",
                ),
              ),
            ),
            Container(
              color: const Color(0xff24616b),
              child: Text(
                date,
                style: AppTextStyle.semiBold().copyWith(
                  fontSize: 14.h,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontFamily: "Montserrat",
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  titleWorks(String txt, String name, Color color) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.sp, horizontal: 5.sp),
      child: Row(
        children: [
          Image.asset(
            'assets/$name',
            scale: 2,
            color: color,
          ),
          SizedBox(
            width: 5.sp,
          ),
          Text(
            txt,
            style: AppTextStyle.semiBold().copyWith(
              fontSize:       35.h, 
              fontWeight: FontWeight.w500,
              color: color,
              fontFamily: "Montserrat",
            ),
          )
        ],
      ),
    );
  }
}
