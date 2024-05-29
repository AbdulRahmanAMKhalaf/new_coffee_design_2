import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../coffe_type_model/coffee_type_model.dart';
import '../../item_screen/item_screen_view/item_screen_view.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 10.0.px),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(),
          /// ' find the best ......'
          const Text(
            'Find the best\ncoffee for you',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          /// Text form field
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white10.withOpacity(.13),
              hintText: 'Find your coffee...',
              hintStyle: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 15.px,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade500,
                size: 30,
              ),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 1.h,),
          SizedBox(
            height: 2.h,
          ),
          /// type of coffee list
          SizedBox(
            height: 6.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  splashColor: Colors.black,
                  splashFactory: NoSplash.splashFactory,
                  child: Column(
                    children: [
                      Text(
                        coffeeType[index],
                        style: TextStyle(
                          fontSize: 18.px,
                          fontWeight: FontWeight.w600,
                          color: HexColor('#FEA252'),
                        ),
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  width: 5.w,
                ),
                itemCount: coffeeType.length),
          ),
          SizedBox(
            height: 2.h,
          ),
          CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (context, index, realIndex) => InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder:(context) => const ItemScreenView(),
                      ),
                  );
                },
                child: Container(
                  width: 60.w,
                  height: 38.h,
                  decoration: BoxDecoration(
                    color: Colors.white70.withOpacity(.1),
                    gradient: SweepGradient(colors: [
                      Colors.black26.withOpacity(1),
                      Colors.grey.shade100,
                      Colors.grey.shade200,
                    ]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// image
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Container(
                                  width: 60.w,
                                  height: 23.h,
                                  decoration: const BoxDecoration(),
                                  child: const Image(
                                    image: NetworkImage(
                                        'https://th.bing.com/th/id/OIP.sORUCLQs6IFavbrcEWRPgAHaE8?rs=1&pid=ImgDetMain'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.3),
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomLeft: Radius.circular(20))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 20.px,
                                          color: HexColor('#FEA252'),
                                        ),
                                        Text(
                                          '4.3',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20.px),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        /// coffee type
                        Text(
                          'Cuppuccino',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.px,
                              fontWeight: FontWeight.w600),
                        ),
                        /// with ....
                        Text(
                          'with Oat milk',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.px,
                              fontWeight: FontWeight.w600,
                              wordSpacing: -2),
                        ),
                        /// price
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: '\$',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: HexColor('#FEA252'),
                                    )),
                                const TextSpan(
                                    text: '4.20',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ))
                              ]),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                color: HexColor('#FEA252'),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 25,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              options: CarouselOptions(
                viewportFraction: 0.65,
                aspectRatio: 0.96,
                scrollDirection: Axis.horizontal,
                initialPage: 0,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
              )),
        ],
      ),
    );
  }
}
