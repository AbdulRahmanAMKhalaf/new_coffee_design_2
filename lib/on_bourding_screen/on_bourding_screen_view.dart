import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../cores/Models/on_bourding_model/on_bourding_model.dart';
import '../home_screen/home_screen_view/home_screen_view.dart';

class OnBourdingScreenView extends StatelessWidget {
  const OnBourdingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder:(context, index) =>  Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image:NetworkImage(
                  onBourdingList[index].image
              ),
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:60.0,horizontal: 10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: SizedBox(
                  height: 8.h,
                  child: Text(onBourdingList[index].text,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:  TextStyle(
                      fontSize: 25,
                      height: 1.3.px,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder:(context) => const HomeScreenView(),
                        ),
                        (route) => false);
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        itemCount: onBourdingList.length,
      ),
    );
  }
}
