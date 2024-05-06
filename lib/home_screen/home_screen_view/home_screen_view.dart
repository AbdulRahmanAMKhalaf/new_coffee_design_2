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
        leading: Container(
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
        actions: [
          Container(
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
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://scontent.fadj1-1.fna.fbcdn.net/v/t39.30808-6/432931196_1236864423955420_7340077781053008830_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_ohc=I1NZyZqT2qcQ7kNvgH3DpDy&_nc_ht=scontent.fadj1-1.fna&oh=00_AfCBGzP4q3BI7fk-fQ4bqxPV_D_oDxIQ3gBAGcblRLVluA&oe=663E3455'),
                )),
          ),
        ],
      ),
      body: const HomeScreenContent(),
    );
  }
}
