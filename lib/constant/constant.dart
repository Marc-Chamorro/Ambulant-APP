import 'package:flutter/material.dart';

class ConstantAPIPaths {
  //root
  static String root = "http://ambulantapi.ddns.net:8082/api/";
  //login-echoping
  static String loginEchoPing = "login/echoping";
  //login-authenticate
  static String loginAuthenticate = "login/authenticate";
  //user-add
  static String userAdd = "user/add";
}

class ConstantColors {
  static Color transparent = const Color(0x00000000);
  //cursor
  static Color cursorClear = Colors.white;
  //fill
  static Color filldark = const Color(0xFF595858);
  //textColor
  static Color textColorSelected = Colors.white;
  static Color textColorNotSelected = const Color(0x98FFFFFF);
  //separators
  static Color separatorsColorSelected = Colors.white;
  static Color separatorsColorNotSelected = const Color(0xFF252427);
  //main colors
  static Color backgroundYellow = const Color(0xFFFFEE32);
  static Color backgroundOrange = const Color(0xFFFFB300);
}

class ConstantTextStyles {
  //title
  static TextStyle titleClearStyle = const TextStyle(
    fontFamily: 'Poppins',
    color: Color(0xFFFEFEFE),
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  //labels
  static TextStyle labelGreyStyle = const TextStyle(
    fontFamily: 'Lexend Deca',
    color: Color(0x98FFFFFF),
    fontSize: 14,
    fontWeight: FontWeight.normal,
    //height: 5
  );
  static TextStyle labelClearStyle = const TextStyle(
    fontFamily: 'Lexend Deca',
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  //labels with height
  static TextStyle labelGreyHeightStyle = const TextStyle(
    fontFamily: 'Lexend Deca',
    color: Color(0x98FFFFFF),
    fontSize: 14,
    fontWeight: FontWeight.normal,
    height: 5
  );

  //cards
  static TextStyle buttonLoginSignup = const TextStyle(
    fontFamily: 'Lexend Deca',
    color: Color(0xFF010101),
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

class ConstantIcons {
  static Icon myIcon = const Icon(
    Icons.add,
    color: Colors.green,
  );
}

class ConstantString {
  static String appName = "Ambulant";
}

class ConstantImages {
  static String logoTransparent = 'assets/images/LogoTransparent.png';
}