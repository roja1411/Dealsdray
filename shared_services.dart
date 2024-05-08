
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'model/user_model.dart';



class SharedService {

  //it will check  data true or false
  static Future<bool> isLoggedIn() async{
    final prefs =await SharedPreferences.getInstance();
    return prefs.getString("login_details")!=null ? true : false;
  }

  static Future<void> setLoginDetails(UserModel? userModel)async{
    final prefs = await SharedPreferences.getInstance();

    if(userModel != null){
      prefs.setString('login_details', json.encode(userModel.toJson()));
      return;
    }

    else{
      prefs.remove('login_details');
      return;
    }
  }

  static Future<UserModel?> loginDetails()async{
    final prefs = await SharedPreferences.getInstance();

    if(prefs.getString('login_details') != null){
      return UserModel.fromJson(json.decode(prefs.getString('login_details')!));
    }
    else{
      return null;
    }
  }

  static Future<void> logOut()async{
    await setLoginDetails(null);
  }
}