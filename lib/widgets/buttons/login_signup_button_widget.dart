import 'package:ambulant/constant/constant.dart';
import 'package:flutter/material.dart';

class LoginSignupTextButton extends StatefulWidget {
  final String text;
  final Function functionfuture;
  //final Function function;

  LoginSignupTextButton({
    required this.text,
    required this.functionfuture,
    //required this.function,
  });

  _DefaultButton createState() => _DefaultButton();
}

class _DefaultButton extends State<LoginSignupTextButton> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        widget.functionfuture;
      },
      child: Text(
        widget.text,
        style: ConstantTextStyles.buttonLoginSignup,
      ),
      style: TextButton.styleFrom(
          elevation: 3,
          primary: ConstantColors.backgroundYellow,
          shadowColor: Colors.black54,
          backgroundColor: Colors.white,
          side: const BorderSide(
            color: Colors.transparent,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
