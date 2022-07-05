import 'package:ambulant/constant/constant.dart';
import 'package:flutter/material.dart';

class LoginSignupButtonsLogic {
  ChangePrimaryColor(bool login) {
    if (login) {
      return ConstantColors.textColorSelected;
    } else {
      return ConstantColors.textColorNotSelected;
    }
  }

  ChangeBarPrimaryColor(bool login) {
    if (login) {
      return ConstantColors.separatorsColorSelected;
    } else {
      return ConstantColors.separatorsColorNotSelected;
    }
  }
}