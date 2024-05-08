import 'dart:io';
import 'package:dio/dio.dart';
import 'package:new_project/api/server_ip.dart';

class ApiService {

  final options = BaseOptions(
    baseUrl: ServerIp.baseUrl,
    connectTimeout: const Duration(seconds: 60 * 30),
    receiveTimeout: const Duration(seconds: 60 * 30),
  );

  Future<Map<String, dynamic>?> loginOtpRequestUser(model) async {
    Map<String, dynamic>? jsonResp;
    try {
      var data = await Dio(options).post(
          '/user/otp',
          data: model,
          options: Options(
              headers: {
                HttpHeaders.contentTypeHeader: "application/json",
                HttpHeaders.authorizationHeader: "Bearer ${ServerIp
                    .staticToken}"
              }
          )

      );
      if (data.statusCode == 200) {
        jsonResp = {'code': data.statusCode, 'data': data.data};
      }
    } on DioException catch (e) {
      if (e.response != null) {
        jsonResp = {'code': e.response!.statusCode, 'data': e.response!.data};
      }
      else {
        jsonResp = {'code': 500, 'data': {'msg': 'Something error try again'}};
      }
    }
    return jsonResp;
  }
  Future<Map<String, dynamic>?> otpRequestUser(model) async {
    Map<String, dynamic>? jsonResp;
    try {
      var data = await Dio(options).post(
          '/user/otp/verification',
          data: model,
          options: Options(
              headers: {
                HttpHeaders.contentTypeHeader: "application/json",
                HttpHeaders.authorizationHeader: "Bearer ${ServerIp
                    .staticToken}"
              }
          )

      );
      if (data.statusCode == 200) {
        jsonResp = {'code': data.statusCode, 'data': data.data};
      }
    } on DioException catch (e) {
      if (e.response != null) {
        jsonResp = {'code': e.response!.statusCode, 'data': e.response!.data};
      }
      else {
        jsonResp = {'code': 500, 'data': {'msg': 'Something error try again'}};
      }
    }
    return jsonResp;
  }
  Future<Map<String, dynamic>?> userRegister(model) async {
    Map<String, dynamic>? jsonResp;
    try {
      var data = await Dio(options).post(
          '/user/email/referral',
          data: model,
          options: Options(
              headers: {
                HttpHeaders.contentTypeHeader: "application/json",
                HttpHeaders.authorizationHeader: "Bearer ${ServerIp
                    .staticToken}"
              }
          )

      );
      if (data.statusCode == 200) {
        jsonResp = {'code': data.statusCode, 'data': data.data};
      }
    } on DioException catch (e) {
      if (e.response != null) {
        jsonResp = {'code': e.response!.statusCode, 'data': e.response!.data};
      }
      else {
        jsonResp = {'code': 500, 'data': {'msg': 'Something error try again'}};
      }
    }
    return jsonResp;
  }

}
