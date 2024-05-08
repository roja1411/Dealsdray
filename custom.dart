

import 'package:flutter/material.dart';
import 'package:get/get.dart';


customSnack({title,type,msg}){
  Get.snackbar(
    title,
    msg,
    backgroundColor: type == 'e' ? Colors.red : Colors.green,
    colorText: Colors.white,
    duration: 2.seconds,
    snackPosition: SnackPosition.BOTTOM,

  );
}

