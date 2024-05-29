import 'package:coffee_design_2/splash_screen/splash_screen_content.dart';
import 'package:flutter/material.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashScreenContent(),
    );
  }
}
