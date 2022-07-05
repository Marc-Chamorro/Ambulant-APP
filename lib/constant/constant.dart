import 'package:flutter/material.dart';

class ConstantAPIPaths {
  //root
  static String root = "http://ambulantapi.ddns.net:8082/api/";
  //echoping
  static String loginEchoPing = "login/echoping";
  //authenticate
  static String loginAuthenticate = "login/authenticate";
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