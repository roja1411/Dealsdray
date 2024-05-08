


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'constant/theme.dart';
import 'controller/home_controller.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  HomeController hc = Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search here",
                        prefixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () {
                              },
                            ),
            
                            Image.asset(
                              "assets/Image/img_1.png",
                              width: 30,
                              height: 44,
                            ),
                          ],
                        ),
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
            
            
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            aspectRatio: 2.40,
                            enlargeCenterPage: true,
                            enableInfiniteScroll: false,
                            initialPage: 0,
                            autoPlay: false,
                            viewportFraction: 0.85,
                            onPageChanged: (index, reason) {
                              //wc.cardCurrentIndex.value = index;
                            },
                          ),
                          items: [
                            cardWidget1(),
                            cardWidget2(),
                            cardWidget3(),
                          ],
                        ),
                        SizedBox(height: 20),
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                          gradient: LinearGradient(colors: [
                            Colors.blue,
                            Colors.blueAccent.shade100,
                          ])
                      ),
            
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'KYC Pending',
                              style: textTheme.textTheme.titleMedium!
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'You need to provide the required  documents',
                              textAlign: TextAlign.center,
                              style: textTheme.textTheme.titleMedium!
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(height: 5),
                            Text(
                              ' for your account activation',
                              textAlign: TextAlign.center,
                              style: textTheme.textTheme.titleMedium!
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(height: 20),
                            TextButton(
                              onPressed: () {
                                // Add your onPressed logic here
                              },
                              child: Text('Click Here',style: textTheme.textTheme.titleSmall!
                                  .copyWith(color: Colors.white),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                        SizedBox(height: 20),
            
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(),
                                  gradient: LinearGradient(colors: [
                                    Colors.blue,
                                    Colors.blue.shade900,
                                  ])
                              ),
                              child: Column(
                                children: [
                                  // Icon(Icons.home,),
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.mobile_off,size: 20,color: Colors.white,),
                                  ),
                                  Text('Mobile',style: textTheme.textTheme.titleSmall!
              .copyWith(color: Colors.white)),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(),
                                  gradient: LinearGradient(colors: [
                                    Colors.green,
                                    Colors.green.shade900,
                                  ])
                              ),
                              child: Column(
                                children: [
                                  // Icon(Icons.home,),
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.laptop,size: 30,color: Colors.white,),
                                  ),
                                  Text('Laptop',style: textTheme.textTheme.titleSmall!
                                      .copyWith(color: Colors.white))
                                ],
                              ),
                            ),
            
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(),
                                  gradient: LinearGradient(colors: [
                                    Colors.red,
                                    Colors.red.shade900,
                                  ])
                              ),
                              child: Column(
                                children: [
                                  // Icon(Icons.home,),
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.camera,color: Colors.white,),
                                  ),
            
                                  Text('Camera',style: textTheme.textTheme.titleSmall!
                                      .copyWith(color: Colors.white))
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(),
                                  gradient: LinearGradient(colors: [
                                    Colors.deepOrange,
                                    Colors.deepOrange.shade400,
                                  ])
                              ),
                              child: Column(
                                children: [
                                  // Icon(Icons.home,),
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.lightbulb,size: 30,color: Colors.white,),
                                  ),
                                  Text('LED',style: textTheme.textTheme.titleSmall!
                                      .copyWith(color: Colors.white))
                                ],
                              ),
                            ),
            
                          ],
                        ),
                        SizedBox(height: 20),
            
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                gradient: LinearGradient(colors: [
                                  Colors.purpleAccent.shade200,
                                  Colors.blueAccent.shade100,
                                ])
                            ),
            
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("EXCLUSIVE FOR YOU",style: textTheme.textTheme.titleMedium!
                                  .copyWith(color: Colors.white)),
                                      Icon(Icons.arrow_forward,color: Colors.white,),
                                    ],
                                  ),
                                  Container(
                                    height: context.height * 0.6,
                                    child: Image.asset(
                                      'assets/Image/img_3.png',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
            ],
                ),
                ),
            
                ],
            
              ),
            ),
          ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                                 Column(
                                   children: [
                                     // Icon(Icons.home,),
                                     IconButton(
                                         onPressed: (){},
                                         icon: Icon(Icons.home,size: 30,),
                                     ),
                                     Text('Home')
                                   ],
                                 ),
                          Column(
                            children: [
                              // Icon(Icons.home,),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.category_outlined,size: 30,),
                              ),
                              Text('Category')
                            ],
                          ),
                          Column(
                            children: [
                              // Icon(Icons.home,),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.book_online_sharp,size: 30,),
                              ),

                              Text('Deals')
                            ],
                          ),
                          Column(
                            children: [
                              // Icon(Icons.home,),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.shopping_cart_outlined,size: 30,),
                              ),
                              Text('Cart')
                            ],
                          ),
                          Column(
                            children: [
                              // Icon(Icons.home,),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.person,size: 30,),
                              ),
                              Text('Profile')
                            ],
                          ),
                        ],
                      )
          //
          //           ],
          //
          //   ),
          // ),
        ],
      ),

    );
  }

  Widget cardWidget1() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          gradient: LinearGradient(colors: [
            Colors.purpleAccent.shade200,
            Colors.blueAccent.shade100,
          ],
          )),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Redmi Note 7S'.tr,
                    style: textTheme.textTheme.titleMedium!
                        .copyWith(color: Colors.white)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('48MP For EveryOne'.tr,
                    style: textTheme.textTheme.titleSmall!
                        .copyWith(color: Colors.white)),
              ],
            ),
            SizedBox(height: Get.height * 0.01), Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('20M units'.tr,
                    style: textTheme.textTheme.titleSmall!
                        .copyWith(color: Colors.red)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('of Redmi Note 7 series sold globally',
                    style: textTheme.textTheme.titleSmall!
                        .copyWith(color: Colors.white)),
              ],
            ),
            SizedBox(height: Get.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Now on no cost EMI',
                    style: textTheme.textTheme.titleSmall!
                        .copyWith(color: Colors.white)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('From 999',
                    style: textTheme.textTheme.titleSmall!
                        .copyWith(color: Colors.white)),
                // Container(
                //  // height: context.height * 0.3,
                //   child: Image.asset(
                //     'assets/Image/img_3.png',
                //   ),
                // ),
              ],
            ),

          ],
        ),
      ),
    );
  }

  Widget cardWidget2() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          gradient: LinearGradient(colors: [
            Colors.purpleAccent.shade200,
            Colors.blueAccent.shade100,
          ])),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Redmi Note 7S'.tr,
                    style: textTheme.textTheme.titleMedium!
                        .copyWith(color: Colors.white)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('48MP For EveryOne',
                    style: textTheme.textTheme.titleSmall!
                        .copyWith(color: Colors.white)),
              ],
            ),
            SizedBox(height: Get.height * 0.01), Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('20M units',
                    style: textTheme.textTheme.titleSmall!
                        .copyWith(color: Colors.red)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('of Redmi Note 7 series sold globally',
                    style: textTheme.textTheme.titleSmall!
                        .copyWith(color: Colors.white)),
              ],
            ),
            SizedBox(height: Get.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Now on no cost EMI',
                    style: textTheme.textTheme.titleSmall!
                        .copyWith(color: Colors.white)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('From 999',
                    style: textTheme.textTheme.titleSmall!
                        .copyWith(color: Colors.white)),
                // Container(
                //  // height: context.height * 0.3,
                //   child: Image.asset(
                //     'assets/Image/img_3.png',
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget cardWidget3() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          gradient: LinearGradient(colors: [
            Colors.purpleAccent.shade200,
            Colors.blueAccent.shade100,
          ])),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Redmi Note 7S'.tr,
                      style: textTheme.textTheme.titleMedium!
                          .copyWith(color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('48MP For EveryOne'.tr,
                      style: textTheme.textTheme.titleSmall!
                          .copyWith(color: Colors.white)),
                ],
              ),
              SizedBox(height: Get.height * 0.01), Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('20M units'.tr,
                      style: textTheme.textTheme.titleSmall!
                          .copyWith(color: Colors.red)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('of Redmi Note 7 series sold globally',
                      style: textTheme.textTheme.titleSmall!
                          .copyWith(color: Colors.white)),
                ],
              ),
              SizedBox(height: Get.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Now on no cost EMI',
                      style: textTheme.textTheme.titleSmall!
                          .copyWith(color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('From 999',
                      style: textTheme.textTheme.titleSmall!
                          .copyWith(color: Colors.white)),
                  // Container(
                  //  // height: context.height * 0.3,
                  //   child: Image.asset(
                  //     'assets/Image/img_3.png',
                  //   ),
                  // ),
                ],
              ),
          
            ],
          ),
        ),
      ),
    );
  }

}