import 'dart:io';

import 'package:ambulant/constant/constant.dart';
import 'package:ambulant/providers/login_signup/signup_user_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:ambulant/utilities/navigation/navigate_screens.dart';

class SignupLogic {
  final SignupUserProvider signupUserProvider = SignupUserProvider();
  final Navigation navigation = Navigation();

  int response = 0;
  String text = "";
  late http.Response validationResponse;

  UserCreation(Function refresh, BuildContext context, String name,
      String email, String password) async {
    try {
      validationResponse =
          await signupUserProvider.AuthenticateAPI(name, email, password);

      if (validationResponse.statusCode == 200) {
        response = validationResponse.statusCode;
        navigation.NavigateLocalTypePage(context);
      } else {
        refresh(response = validationResponse.statusCode);
      }
    } on SocketException {
      print('No Internet connection 😑');
      refresh(response = 600);
    } on HttpException {
      print("Couldn't find the post 😱");
      refresh(response = 601);
    } on FormatException {
      print("Bad response format 👎");
      refresh(response = 602);
    }
  }

  ReturnVerificationMessage(Function refresh) {

    if (response == 200 || response == 0) {
      text = '';
    } else if (response == 600) {
      text = 'No internet connection available';
    } else if (response == 601) {
      text = 'Could not find the server';
    } else if (response == 602) {
      text = 'Wrong format';
    } else {
      try {
        text = validationResponse.body.replaceAll('"', "");
      } on Exception {
        text = 'An error occurred';
      }
    }

    refresh(text);

    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
    );
  }
}
