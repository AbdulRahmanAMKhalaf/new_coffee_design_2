import 'package:coffee_design_2/splash_screen/splash_Screen_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return const MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          home: SplashScreenView(),
        );
      },
    );
  }
}