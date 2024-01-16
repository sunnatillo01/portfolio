import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_tiin_web/flutter_bloc/bloc/comments_bloc.dart';
import 'package:portfolio_tiin_web/theme/app_text_style.dart';

import 'package:url_launcher/url_launcher.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({
    super.key,
  });

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  TextEditingController txtController = TextEditingController();

  int indexPage = 0;
  Future<void> _launchUrl(String url) async {
    var uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Column(
        children: [
          Text(
            "Leave your comments",
            style: AppTextStyle.semiBold().copyWith(
              fontSize: 6.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: "Montserrat",
            ),
          ),
          BlocConsumer<CommentsBloc, CommentsState>(
            listener: (context, state) {
              if (state is SendingCommentSuccesState) {
                txtController.clear();
              }
            },
            builder: (context, state) {
              return TextField(
                controller: txtController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: InkWell(
                    onTap: () {
                      BlocProvider.of<CommentsBloc>(context).add(
                        SendCommentEvent(txt: txtController.text),
                      );
                    },
                    child: Container(
                      color: Colors.deepOrange,
                      child: const Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 10.sp,
          ),
          Text(
            "You can find out more about me on this website and leave your comments and feedback about me through the website.",
            style: AppTextStyle.semiBold().copyWith(
              fontSize: 4.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontFamily: "Montserrat",
            ),
          ),
          const Spacer(),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  _launchUrl('https://github.com/CoderAltair');
                },
                icon: Image.asset(
                  'assets/github.png',
                  color: const Color(0xff24616b),
                ),
              ),
              IconButton(
                onPressed: () {
                  _launchUrl('https://t.me/azizbek_kv');
                },
                icon: Image.asset(
                  'assets/telegram.png',
                  color: const Color(0xff24616b),
                ),
              ),
              IconButton(
                onPressed: () {
                  _launchUrl(
                      'https://www.instagram.com/kodirov_azizbek7/?next=%2F');
                },
                icon: Image.asset(
                  'assets/instagram.png',
                  color: const Color(0xff24616b),
                ),
              ),
              IconButton(
                onPressed: () {
                  _launchUrl(
                      'https://www.linkedin.com/in/azizbek-qodirov-15692b25a/');
                },
                icon: Image.asset(
                  'assets/linkedin.png',
                  color: const Color(0xff24616b),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
