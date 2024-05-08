// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String? mobileNumber;
  String? deviceId;

  UserModel({
    this.mobileNumber,
    this.deviceId,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    mobileNumber: json["mobileNumber"],
    deviceId: json["deviceId"],
  );

  Map<String, dynamic> toJson() => {
    "mobileNumber": mobileNumber,
    "deviceId": deviceId,
  };
}
