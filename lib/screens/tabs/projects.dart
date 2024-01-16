import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_tiin_web/screens/widgets/comments_vertical.dart';
import 'package:portfolio_tiin_web/theme/app_text_style.dart';

import 'package:url_launcher/url_launcher.dart';

class FirstScreen extends StatefulWidget {
  final bool? bottomW;
  const FirstScreen({super.key, this.bottomW});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/bac2.jpg',
                    ),
                    fit: BoxFit.cover)),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              decoration: const BoxDecoration(color: Colors.transparent),
            ),
          ),
          Padding(
            padding: MediaQuery.of(context).size.width >= 1550
                ? EdgeInsets.symmetric(horizontal: 50.h)
                : EdgeInsets.zero,
            // width: MediaQuery.of(context).size.width * 1,
            // height: MediaQuery.of(context).size.height * 1,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Projects",
                        style: AppTextStyle.title().copyWith(
                          fontSize: 35.h,
                          color: const Color(0xff24616b),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                  apps(
                    '1-portrait',
                    "2-portrait",
                    "Tiin Loyalty",
                    "TiinLoyalty is an application made for TIIN market.",
                    "10 K",
                    "11.webp",
                    "",
                    () {
                      _launchUrl(
                          "https://play.google.com/store/apps/details?id=cashback.in1.uz&hl=en&gl=US");
                    },
                    () {
                      _launchUrl(
                          "https://apps.apple.com/uz/app/tiin-loyalty/id1609771623");
                    },
                  ),
                  apps(
                    '5-portrait',
                    "6-portrait",
                    "PosMobile",
                    "PosMobile application is used for inventory in warehouses.",
                    "10 +",
                    "33.webp",
                    "",
                    () {
                      _launchUrl(
                          "https://play.google.com/store/apps/details?id=uz.in1.inventory&hl=en&gl=US");
                    },
                    () {},
                  ),
                  apps(
                    '9-portrait',
                    '10-portrait',
                    "TiinAgent",
                    "This application for agents to connect with clients.",
                    "10 +",
                    "99.webp",
                    "",
                    () {
                      _launchUrl(
                          "https://play.google.com/store/apps/details?id=uz.in1.agent&hl=en&gl=US");
                    },
                    () {},
                  ),
                  apps(
                    '4-portrait',
                    '3-portrait',
                    "TimeCard",
                    "The application is designed to monitor the arrival and departure of employees in offices.",
                    "10 K",
                    "22.webp",
                    "",
                    () {
                      _launchUrl(
                          "https://play.google.com/store/apps/details?id=uz.in1.time_card&hl=en&gl=US");
                    },
                    () {},
                  ),
                  apps(
                    '7-portrait',
                    '8-portrait',
                    "Sajda",
                    "Sadja app is designed to determine rosary, prayer times and\nQibla direction.",
                    "10+",
                    "44.png",
                    "",
                    () {},
                    () {},
                  ),
                  apps(
                    '5-portrait',
                    '6-portrait',
                    "Weather",
                    "The Weather application is used to determine weather information.",
                    "10 +",
                    "55.jpg",
                    "",
                    () {},
                    () {},
                  ),
                  apps(
                    "",
                    "",
                    "Pos Incom",
                    "Incom deskop application provides POS system integration with OFD.",
                    "LLC project",
                    "66.webp",
                    "12",
                    () {},
                    () {},
                  ),
                  apps(
                    '',
                    '',
                    "InvanPos",
                    "A POS is an application used by retail customers to process transactions.",
                    "200+",
                    "77.webp",
                    "13",
                    () {},
                    () {},
                  ),
                  widget.bottomW == true
                      ? const Positioned(
                          bottom: 0,
                          child: BottomVerticalWidget(),
                        )
                      : const Text(""),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    var uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  Widget apps(
    String index,
    String index3,
    String txt,
    String subTxt,
    String download,
    String index2,
    String index4,
    VoidCallback ontapPlay,
    VoidCallback ontapApp,
  ) {
    return Padding(
      padding: widget.bottomW == true
          ? EdgeInsets.symmetric(horizontal: 50.h, vertical: 10.h)
          : EdgeInsets.all(9.h),
      child: Container(
        width: MediaQuery.of(context).size.width >= 870
            ? MediaQuery.of(context).size.width * 0.4
            : MediaQuery.of(context).size.width * 0.25,
        height: 375.h,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/$index2',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        txt,
                        style: AppTextStyle.subtitle().copyWith(
                            color: Colors.white,
                            fontSize: 35.h,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Container(
                    // color: Colors.red,
                    width: widget.bottomW == true
                        ? MediaQuery.of(context).size.width * 0.4
                        : MediaQuery.of(context).size.width * 0.22,
                    child: Text(
                      subTxt,
                      style: AppTextStyle.subtitle().copyWith(
                        color: Colors.white,
                        fontSize: 20.h,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      index != ""
                          ? InkWell(
                              onTap: ontapPlay,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/google-play.png',
                                  ),
                                  Text(
                                    "Downloads: $download",
                                    style: AppTextStyle.subtitle().copyWith(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.width <=
                                                  550
                                              ? 15.h
                                              : 20.h,
                                    ),
                                  )
                                ],
                              ),
                            )
                          : Row(
                              children: [
                                Image.asset(
                                  'assets/windows.png',
                                  scale: 2.h,
                                ),
                                Text(
                                  "Users: $download",
                                  style: AppTextStyle.subtitle().copyWith(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width <= 550
                                            ? 15.h
                                            : 20.h,
                                  ),
                                ),
                              ],
                            ),
                      const SizedBox(
                        height: 15,
                      ),
                      txt == "Tiin Loyalty"
                          ? InkWell(
                              onTap: ontapApp,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/app-store.png',
                                  ),
                                  Text(
                                    "Downloads: $download",
                                    style: AppTextStyle.subtitle().copyWith(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.width <=
                                                  550
                                              ? 15.h
                                              : 20.h,
                                    ),
                                  )
                                ],
                              ),
                            )
                          : const Text(''),
                    ],
                  ),
                ],
              ),
            ),
            index == ""
                ? const Text("")
                : Positioned(
                    right: widget.bottomW == true ? 100: 30.sp,
                    bottom: widget.bottomW == true ? 40.h : 15.h,
                    child: SizedBox(
                      width: widget.bottomW == true ? 60.sp : 30.sp,
                      child: Image.asset(
                        'assets/$index.png',
                      ),
                    ),
                  ),
            index3 == ""
                ? const Text("")
                : Positioned(
                    right: 10.h,
                    bottom: widget.bottomW == true ? 40.h : 10.h,
                    child: SizedBox(
                      width: widget.bottomW == true ? 70.sp : 38.sp,
                      child: Image.asset('assets/$index3.png'),
                    ),
                  ),
            index4 == ""
                ? const Text("")
                : Positioned(
                    right: 8.h,
                    bottom: 50.h,
                    child: SizedBox(
                      height: widget.bottomW==true? 80.sp: 40.sp,
                      child: Image.asset(
                        'assets/$index4.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
