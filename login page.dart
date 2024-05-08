import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:get/get.dart';
import 'package:new_project/otp+page.dart';
import 'package:new_project/registartion_page.dart';

import 'constant/theme.dart';
import 'controller/login_controller.dart';
import 'loading/loading-progress.dart';

class LoginPage extends StatelessWidget {
  LoginController lc = Get.put(LoginController());




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: context.height * 0.4,
                child: Image.asset(
                  'assets/Image/img_1.png',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Glad to see You!',
                      style: textTheme.textTheme.titleLarge!
                          .copyWith(fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Please provide your', style: textTheme.textTheme.titleSmall),
                  Text(' phone number ',
                      style: textTheme.textTheme.titleSmall!
                          .copyWith(fontWeight: FontWeight.bold)),

                ],
              ),
              SizedBox(height: Get.height * 0.04),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  controller: lc.mobileNoControllerTxt,
                  style: textTheme.textTheme.bodyMedium,
                  decoration: InputDecoration(
                    hintText: "Phone",
                    border: UnderlineInputBorder(),
                    focusedBorder: UnderlineInputBorder(),
                    counterText: '',
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.05),
              Obx(() => lc.isLogLoading.value
              ? CustomLoadingProgress(color: textTheme.primaryColor)
                  :
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  onPressed: () {
                     Get.to(OtpPage(mobileNumber:lc.mobileNoControllerTxt.text.trim()));
                    lc.otpRequest();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(""),
                      Text(
                        "SEND CODE",
                        style: textTheme.textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.arrow_circle_right_sharp,
                            //color: textTheme.primaryColor,
                            color: Colors.white,
                            size: 40,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )),
              SizedBox(height: Get.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 2,
                    child: Text(
                      "Login here ? or",
                      style: textTheme.textTheme.titleMedium,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(Registrationpage());
                      },
                      child: Text(
                        "Email",
                        style: textTheme.textTheme.titleSmall!
                            .copyWith(color: Colors.red),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
