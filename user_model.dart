// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String? mobileNumber;
  String? deviceId;
  String? otp;
  String? userId;
  String? email;
  String? password;
  int? referralCode;
  String? token;

  UserModel({
    this.mobileNumber,
    this.deviceId,
    this.otp,
    this.userId,
    this.email,
    this.password,
    this.referralCode,
    this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    mobileNumber: json["mobileNumber"],
    deviceId: json["deviceId"],
    otp: json["otp"],
    userId: json["userId"],
    email: json["email"],
    password: json["password"],
    referralCode: json["referralCode"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "mobileNumber": mobileNumber,
    "deviceId": deviceId,
    "otp": otp,
    "userId": userId,
    "email": email,
    "password": password,
    "referralCode": referralCode,
    "token": token,
  };
}
