import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../home_screen_content/home_Screen_content.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding:  EdgeInsets.only(left: 10.0.px),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [
                  Colors.grey.shade700,
                  Colors.black38,
                ], begin: Alignment.topLeft)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.dataset_outlined,
                color: Colors.grey.shade800,
                size: 35,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0.px),
            child: Container(
              height: 6.h,
              width: 12.w,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: HexColor('#4D4D4D'),
                    width: 0.7.w,
                    style: BorderStyle.solid,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
            ),
              child: Icon(Icons.person,color: Colors.grey.shade400,size: 30.px,),
          ),
          ),
        ],
      ),
      body: const HomeScreenContent(),
    );
  }
}
