import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../api/api_service.dart';
import '../customesnack/custom.dart';
import '../home_page.dart';
import '../model/user_model.dart';
import '../shared_services.dart';
import 'login_controller.dart';


class OTPController extends GetxController{

  var otpController = TextEditingController();
  var isLogLoading = false.obs;

  loginCustomer(mobileNo)async{
    isLogLoading.value = true;
    var model = {
      'mobilNumber':mobileNo,
    };
    var data = await ApiService().otpRequestUser(model);
    isLogLoading.value = false;
    if(data != null){
      debugPrint('data${data}');
      if(data['code'] == 200){

        Get.find<LoginController>().mobileNoControllerTxt.clear();
        otpController.clear();
        customSnack(
            title: 'Success', type: 's', msg: '${data['data']['msg']}');
        await SharedService.setLoginDetails(UserModel.fromJson(data['data']['data']));
        Get.offAll(()=>HomePage());
      }
      else{

        customSnack(title: 'Error',type: 'e',msg: '${data['data']['msg']}');
      }
    }
  }
  void dispose() {
    otpController.dispose();
    super.dispose();
  }
}