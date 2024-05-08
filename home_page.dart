import 'dart:convert';


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constant/string.dart';
import 'constant/theme.dart';
import 'loading/loading-progress.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Wallet'),
      ),
      body:
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
            SizedBox(height: 20), // Add some space between the CarouselSlider and the new Card
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


            Card(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    // gradient: LinearGradient(colors: [
                    //   Colors.blue,
                    //   Colors.blueAccent.shade100,
                    // ])
                ),

                child: Padding(
                  padding: const EdgeInsets.all(150),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Exclusive For You',
                        style: textTheme.textTheme.titleMedium!
                            .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget cardWidget1() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          gradient: LinearGradient(colors: [
            Colors.pinkAccent.shade100,
            Colors.blueAccent.shade100,
          ],
          )),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Redmi Note 7S'.tr,
                    style: textTheme.textTheme.titleMedium!
                        .copyWith(color: Colors.white)),
              ],
            ),
            SizedBox(height: Get.height * 0.03),
            // Obx(() {
            //   if (wc.loadingForWallet.value) {
            //     return const CustomLoadingProgress(color: Colors.white);
            //   }
            //   return Text('\u20b9${wc.walletAmount.value}',
            //       style: textTheme.textTheme.headlineLarge!
            //           .copyWith(color: Colors.white));
            // }),
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
            Colors.pinkAccent.shade100,
            Colors.blueAccent.shade100,
          ])),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Redmi Note 7S'.tr,
                    style: textTheme.textTheme.titleMedium!
                        .copyWith(color: Colors.white)),
              ],
            ),
            SizedBox(height: Get.height * 0.03),
            // Obx(() {
            //   if (wc.loadingForWallet.value) {
            //     return const CustomLoadingProgress(color: Colors.white);
            //   }
            //   return Text('\u20b9${wc.requestAmount.value}',
            //       style: textTheme.textTheme.headlineLarge!
            //           .copyWith(color: Colors.white));
            // }),
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
            Colors.pinkAccent.shade100,
            Colors.blueAccent.shade100,
          ])),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Redmi Note 7S'.tr,
                    style: textTheme.textTheme.titleMedium!
                        .copyWith(color: Colors.white)),
              ],
            ),
            SizedBox(height: Get.height * 0.03),
            // Obx(() {
            //   if (wc.loadingForWallet.value) {
            //     return const CustomLoadingProgress(color: Colors.white);
            //   }
            //   return Text('\u20b9${wc.withdrawalAmount.value}',
            //       style: textTheme.textTheme.headlineLarge!
            //           .copyWith(color: Colors.white));
            // }),
          ],
        ),
      ),
    );
  }

}