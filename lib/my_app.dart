import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'home_screen/home_screen_view/home_screen_view.dart';
import 'item_screen/item_screen_content/item_screen_content.dart';

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
          home: HomeScreenView(),
        );
      },
    );
  }
}