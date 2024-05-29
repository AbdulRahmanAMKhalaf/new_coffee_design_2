import 'dart:async';
import 'package:coffee_design_2/on_bourding_screen/on_bourding_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreenContent extends StatefulWidget {
  const SplashScreenContent({super.key});

  @override
  State<SplashScreenContent> createState() => _SplashScreenContentState();
}

class _SplashScreenContentState extends State<SplashScreenContent> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const OnBourdingScreenView(),
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Adaptive.w(double.infinity),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.black,
          Colors.brown,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                  text: 'A&A\n',
                  style: TextStyle(
                    fontSize: 40.px,
                    color: Colors.brown.shade200,
                    fontWeight: FontWeight.w800,
                  )),
              TextSpan(
                  text: 'Coffee',
                  style: TextStyle(
                    fontSize: 40.px,
                    color: Colors.brown,
                    fontWeight: FontWeight.w800,
                  ))
            ]),
          ),
          SizedBox(
            height: 17.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0.px),
            child: SizedBox(
              width: 45.w,
              height: 20.h,
              child: Lottie.network(
                fit: BoxFit.fill,
                'https://lottie.host/8146acff-7a8e-46a1-9843-4bffc5af1759/KYMgejRDj8.json',
              ),
            ),
          )
        ],
      ),
    );
  }
}
