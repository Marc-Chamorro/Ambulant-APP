import 'package:flutter/material.dart';

class SignupUserModel {
  final String name;
  final String email;
  final String password;

  SignupUserModel(this.name, this.email, this.password);

  SignupUserModel.fromJson(Map<String, dynamic> json)
      : name = json['Name'],
        email = json['Email'],
        password = json['Password'];

  Map<String, dynamic> toJson() => {
    'Name': name,
    'Email': email,
    'Password': password,
  };
}
