import 'package:flutter/material.dart';

class LoginUserModel {
  final String name;
  final String password;

  LoginUserModel(this.name, this.password);

  LoginUserModel.fromJson(Map<String, dynamic> json)
      : name = json['Username'],
        password = json['Password'];

  Map<String, dynamic> toJson() => {
        'Username': name,
        'Password': password,
      };
}
