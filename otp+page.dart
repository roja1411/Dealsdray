import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/painting/box_decoration.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:get/get.dart';
import 'package:new_project/home_page.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../controller/login_controller.dart';
import 'constant/theme.dart';
import 'controller/otp_controller.dart';
import 'loading/loading-progress.dart';

class OtpPage extends StatelessWidget {
 String mobileNumber;
  OtpPage({super.key, required this.mobileNumber});

  LoginController lc = Get.find<LoginController>();
  OTPController otpC = Get.put(OTPController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
          style: textTheme.textTheme.titleMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: context.height * 0.3,
              child: Image.asset(
                'assets/Image/img.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "OTP Verification",
                    style: textTheme.textTheme.titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "We have sent a unique OTP number",
                  style: textTheme.textTheme.titleMedium,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "to your mobile number",
                  style: textTheme.textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(
              height: 18.0,
            ),
        
            PinCodeTextField(
              appContext: context,
              length: 4,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              keyboardType: TextInputType.number,
              controller: otpC.otpController,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: Get.width * 0.1,
                fieldWidth: Get.width * 0.1,
                activeFillColor: textTheme.primaryColor,
                activeColor: textTheme.primaryColor,
                inactiveColor: Colors.black,
                selectedColor: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Did't recieve the otp?",
                    style: textTheme.textTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Obx(
                        () => lc.isLogLoading.value
                        ? CustomLoadingProgress(
                      color: textTheme.primaryColor,
                    )
                        : TextButton(
                        onPressed: () {
                         // lc.otpRequest();
                        },
                        child: Text('Send Again')),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.1,
            ),
            Obx(
                  ()=> otpC.isLogLoading.value?AnimatedContainer(
                      duration: 200.milliseconds,
                      width: otpC.isLogLoading.value ? Get.width * 0.15 : 0,
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.rectangle),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CustomLoadingProgress(color: Colors.white),
                      ))

             : ElevatedButton(
                onPressed: () {
                  Get.to(HomePage());
                  otpC.loginCustomer(mobileNumber);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    Text(
                      "Verify".tr,
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
                      horizontal: 10, vertical: 5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
