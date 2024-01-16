import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_tiin_web/screens/widgets/comments_vertical.dart';
import 'package:portfolio_tiin_web/theme/app_text_style.dart';

import 'package:url_launcher/url_launcher.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class FromMeScreen extends StatefulWidget {
  final bool? isBottom;
  const FromMeScreen({super.key, this.isBottom});
  @override
  State<FromMeScreen> createState() => _FromMeScreenState();
}

class _FromMeScreenState extends State<FromMeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.sp, vertical: 5.sp),
          child: Container(
            color: Colors.black.withOpacity(0.7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 5.sp, vertical: 5.sp),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          txt('Name: Sunnatillo'),
                          txt('Surname: Keldiboyev'),
                          txt('Profession: Flutter Developer'),
                          txt('Birthday: 2001.01.08'),
                          txt('Location: Tashkent, Sirdaryo'),
                          txt('GitHub: CoderAltair'),
                          txt('Tel: +998(93) 139-29-41'),
                          txt('Email: \nsunnatillo0107@gmail.com'),
                          SizedBox(
                            height: 10.h,
                          ),
                          InkWell(
                            onTap: () async {
                              _launchUrl(
                                  "${js.context['location']['href']}assets/mee.pdf");
                            },
                            child: Container(
                              height: 45.h,
                              width: 140.h,
                              color: Colors.white,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'CV',
                                      style: AppTextStyle.title().copyWith(
                                        fontSize: 5.sp,
                                        color: const Color(0xff24616b),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Montserrat",
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/download.png",
                                      color: const Color(0xff24616b),
                                      scale: 3,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: 200,
                            width: 130.h,
                            color: Colors.white,
                            child: const Icon(
                              Icons.person,
                              size: 150,
                            ),
                          ),
                          Row(
                            children: [
                              icn('assets/github.png',
                                  "https://github.com/CoderAltair"),
                              icn('assets/telegram.png',
                                  "https://t.me/azizbek_kv"),
                              icn('assets/instagram.png',
                                  "https://www.instagram.com/kodirov_azizbek7/?next=%2F"),
                              icn('assets/linkedin.png',
                                  "https://www.linkedin.com/in/azizbek-qodirov-15692b25a/")
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        widget.isBottom == true ? const BottomVerticalWidget() : const Text(""),
      ],
    );
  }

  txt(String txts) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        txts,
        style: AppTextStyle.title().copyWith(
          fontSize: MediaQuery.of(context).size.width <= 1000 ? 13.h : 17.h,
          // color: const Color(0xff24616b),
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontFamily: "Montserrat",
        ),
      ),
    );
  }

  icn(String path, String url) {
    return IconButton(
      onPressed: () {
        _launchUrl(url);
      },
      icon: Image.asset(
        path,
        color: const Color(0xff24616b),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    var uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }
}
