import 'package:flutter/material.dart';
import 'package:portfolio_tiin_web/screens/home/left.dart';
import 'package:portfolio_tiin_web/screens/home/right.dart';
import 'package:portfolio_tiin_web/screens/home/vertical.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/bac2.jpg',
                    ),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 1,
              child: MediaQuery.of(context).size.width <= 850
                  ? const Vertical()
                  : Row(
                      children: const [
                        LeftScreen(),
                        RightScreen(),
                      ],
                    )),
        ],
      ),
    );
  }
}
