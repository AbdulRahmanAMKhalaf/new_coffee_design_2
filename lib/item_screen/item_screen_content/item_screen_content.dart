import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../coffe_type_model/coffee_type_model.dart';

class ItemScreenContent extends StatelessWidget {
  const ItemScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 11.5.h,
        color: Colors.black,
        child:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Price',
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
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
                  )
                ],
              ),
              SizedBox(width: 5.w,),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: HexColor('#FEA252'),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                            fontSize: 30.px,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// images
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)
                          ),
                          child: SizedBox(
                            width: double.infinity,
                            height: 70.h,
                            child: const Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.sORUCLQs6IFavbrcEWRPgAHaE8?rs=1&pid=ImgDetMain'
                              ),
                            ),
                          ),
                        ),
                        SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: IconButton(
                                      onPressed:(){
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(Icons.arrow_back_ios_new,color: Colors.grey.shade700,size: 25,),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: IconButton(
                                    onPressed:(){},
                                    icon: Icon(Icons.favorite,color: Colors.grey.shade700,size: 25,),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 15.h,
                      decoration: BoxDecoration(
                          color: Colors.black38.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Cappuccino',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.px,
                                  ),
                                ),
                                Text(
                                  'With Oat Milk',
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.px,
                                    wordSpacing: -2
                                  ),
                                ),
                                const Spacer(),
                                Row(
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Icon(Icons.star,size: 20,color: HexColor('#FEA252'),),
                                    RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '4.3',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25.px,
                                                fontWeight: FontWeight.w500
                                              ),
                                            ),
                                            const TextSpan(text: ' '),
                                            TextSpan(
                                              text: '\(6.986\)',
                                              style: TextStyle(
                                                textBaseline: TextBaseline.alphabetic,
                                                color: Colors.grey.shade300,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15.px
                                              ),
                                            ),
                                          ]
                                        ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height:7.h,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      width: 15.w,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.coffee_outlined,size:20,color: HexColor('#FEA252'),),
                                          const Text(
                                            'Coffee',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 5.w,),
                                    Container(
                                      height:7.h,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      width: 15.w,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.water_drop_rounded,size: 20,color: HexColor('#FEA252'),),
                                          const Text(
                                            'Milk',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  height:4.h,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  width: 38.w,
                                  child: Center(
                                    child: Text(
                                      'Medium Roasted',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15.px,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h,),
                const Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                ),
                SizedBox(height: 2.h,),
                RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'A ccappuccino  is a coffee_based drink made primarily from espressoand milk',
                          style: TextStyle(
                            fontSize: 20.px,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                         TextSpan(text: ' ...Read More',
                        style: TextStyle(
                          fontSize: 22,
                          color: HexColor('#FEA252'),
                          fontWeight: FontWeight.w500
                        ),
                        ),
                      ]
                    ),
                ),
                SizedBox(height: 2.h,),
                SizedBox(
                  height: 7.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {},
                        child: Container(
                          height: 10.h,
                          width: 27.w,
                          decoration: BoxDecoration(
                            border: Border.all(color:HexColor('#FEA252'),width: 2 ),
                              color: Colors.grey.withOpacity(0.11),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text(
                              coffeeSizeList[index],
                              style:  TextStyle(
                                fontWeight: FontWeight.w700,
                                color: HexColor('#FEA252'),
                                fontSize: 20
                              ),
                            ),
                          ),
                        ),
                      ),
                      separatorBuilder: (context, index) => SizedBox(width: 5.w,),
                      itemCount: coffeeSizeList.length),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
