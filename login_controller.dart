import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../api/api_service.dart';
import '../customesnack/custom.dart';
import '../notification_manger.dart';
import '../otp+page.dart';



class LoginController extends GetxController{

  TextEditingController mobileNoControllerTxt = TextEditingController();

  var isLogLoading = false.obs;

  otpRequest()async{
    isLogLoading.value = true;
    var model = {
      'mobileNumber':mobileNoControllerTxt.text.trim()
    };
    var data = await ApiService().loginOtpRequestUser(model);
    isLogLoading.value = false;
    if(data != null){
      debugPrint('data ${data}');

        //customSnack(title: 'Success',type: 's',msg: '${data['data']['msg']}');

      if(data['code'] == 200){
        Get.to(() => OtpPage(mobileNumber: mobileNoControllerTxt.text.trim()));
        NotificationManager().displaySimpleNotification(body: 'Your OTP ${data['data']['otp']}',payload: '${data['data']['otp']}');
      }
      else{
        customSnack(title: 'Error',type: 'e',msg: '${data['data']['msg']}');
      }
    }
  }
}