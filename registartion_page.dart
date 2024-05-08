import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'constant/theme.dart';
import 'controller/registartion_controller.dart';
import 'loading/loading-progress.dart';



class Registrationpage extends StatelessWidget {
  Registrationpage({super.key});

  RegistrationController rc = Get.put(RegistrationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Welcome To Registration Form'.tr,
        //   style: textTheme.textTheme.titleMedium !.copyWith(
        //       fontWeight: FontWeight.bold),),
      ),
      body: Container(
        padding: EdgeInsets.all(3),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                // Text('Welcome To Registration Form'.tr,style: textTheme.textTheme.titleLarge!.copyWith(
                //     fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: context.height * 0.3,
                      //width: context.width * 0.9,
                      child: Image.asset(
                        'assets/Image/img_1.png',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Lets Begin!'.tr,style: textTheme.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),),
                  ],
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Please enter your credentials to  proceed',style: textTheme.textTheme.titleMedium,),
                    ],
                  ),
                SizedBox(height: 10.0,),Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      maxLength: 10,
                      //inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      controller: rc.emailController,
                      style: textTheme.textTheme.bodyMedium,
                      decoration: InputDecoration(
                        hintText: "Your email",
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(),
                        counterText: '',
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.03),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      maxLength: 8,
                     // keyboardType: TextInputType.number,
                    //  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      controller: rc.passwordController,
                      style: textTheme.textTheme.bodyMedium,
                      decoration: InputDecoration(
                        hintText: "Create Password",
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(),
                        counterText: '',
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.03),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      controller: rc.refferalcodeController,
                      style: textTheme.textTheme.bodyMedium,
                      decoration: InputDecoration(
                        hintText: "Refferal code(optional)",
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(),
                        counterText: '',
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height * 0.03),
                //registration button
                Obx(
                      ()=> rc.isRegLoading.value ?
                  CustomLoadingProgress() : ElevatedButton(
                    onPressed: () {
                     rc.createUser();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(""),
                        Text(
                          "Register".tr,
                          style: textTheme.textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.arrow_circle_right_sharp,
                              color: Colors.white,
                              size: 40,
                            ),
                          ],
                        )
                      ],
                    ),

                    // Specify the desired icon
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
