import 'dart:io';

import 'package:ambulant/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ambulant/providers/login_signup/login_user_provider.dart';
import 'package:ambulant/providers/check_connection_provider.dart';
import 'package:ambulant/utilities/navigation/navigate_screens.dart';

class LoginLogic {
  final LoginUserProvider loginUserProvider = LoginUserProvider();
  final CheckConnectionProvider checkConnectionProvider = CheckConnectionProvider();
  final Navigation navigation = Navigation();

  int response = 0;

  UserValidation(Function refresh, BuildContext context, String name, String password) async {
    try {
      http.Response validationResponse = await loginUserProvider.AuthenticateAPI(
          name,
          password
      );

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
    String text;
    if (response == 200 || response == 0) {
      text = '';
    } else if (response == 500 || response == 401) {
      text = 'Incorrect user or password';
    } else if (response == 600) {
      text = 'No internet connection available';
    } else if (response == 601) {
      text = 'Could not find the server';
    } else if (response == 602) {
      text = 'Wrong format';
    } else {
      text = 'An error occurred';
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