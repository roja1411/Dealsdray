import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../api/api_service.dart';
import '../customesnack/custom.dart';



class RegistrationController extends GetxController{

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController refferalcodeController = TextEditingController();

  var isRegLoading = false.obs;

  createUser()async{
    if(emailController.text.trim().isEmpty){
      customSnack(title: 'Error',type: 'e',msg: "Please enter Email");
    }
     else if(passwordController.text.trim().isEmpty){
      customSnack(title: 'Error',type: 'e',msg: "Please enter Password");
    }
    else {
      isRegLoading.value = true;
      var model = {

        "password": passwordController.text.trim(),
        "email":  emailController.text.trim(),
        "referralCode": refferalcodeController.text.trim(),
      };
      var data = await ApiService().userRegister(model);
      isRegLoading.value = false;
      if (data != null) {
        debugPrint('data${data}');
        if (data['code'] == 200) {
          Get.back();
          customSnack(
              title: 'Success', type: 's', msg: '${data['data']['msg']}');
        }
        else {
          customSnack(title: 'Error', type: 'e', msg: '${data['data']['msg']}');
        }
      }
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    refferalcodeController.dispose();
    super.dispose();
  }
}