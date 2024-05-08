import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../api/api_service.dart';
import '../customesnack/custom.dart';



class HomeController extends GetxController{

  homeWithoutPrize()async{
      var model = {

      };
      var data = await ApiService().homeWithoutPrize(model);
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

