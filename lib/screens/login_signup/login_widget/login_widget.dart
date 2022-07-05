import 'dart:io';

import 'package:ambulant/constant/constant.dart';
import 'package:ambulant/providers/check_connection_provider.dart';
import 'package:ambulant/screens/login_signup/login_widget/logic.dart';
import 'package:ambulant/utilities/navigation/navigate_screens.dart';
import 'package:ambulant/widgets/text_form_fields/pwd_form_field_request_widget.dart';
import 'package:ambulant/widgets/text_form_fields/text_form_field_request_widget.dart';
import 'package:ambulant/providers/login_signup/login_user_provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginWidget extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController pswController;

  LoginWidget({
    required this.nameController,
    required this.pswController,
  });

  _LoginWidget createState() => _LoginWidget();
}

class _LoginWidget extends State<LoginWidget> {
  final LoginLogic logic = LoginLogic();
  // final LoginUserProvider loginUserProvider = LoginUserProvider();
  // final CheckConnectionProvider checkConnectionProvider = CheckConnectionProvider();
  // final Navigation navigation = Navigation();
  //
  // int response = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: TextFormFieldRequest(
            controller: widget.nameController,
            hint: 'Write your username here',
            inputType: TextInputType.text,
            onChanged: NotifyParent,
            labelText: 'Name',
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: PswFormFieldRequest(
            controller: widget.pswController,
            hint: 'Write your password here',
            inputType: TextInputType.text,
            onChanged: NotifyParent,
            labelText: 'Password',
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: SizedBox(
            width: 230,
            height: 60,
            child: TextButton(
              onPressed: () {
                logic.UserValidation(
                    NotifyParent,
                    context,
                    widget.nameController.text.toString(),
                    widget.pswController.text.toString()
                );
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF010101),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: TextButton.styleFrom(
                  elevation: 3,
                  backgroundColor: Colors.white,
                  side: const BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: logic.ReturnVerificationMessage(
              NotifyParent
          ),
        ),
      ],
    );
  }

  // _userValidation() async {
  //   try {
  //     http.Response validationResponse = await loginUserProvider.AuthenticateAPI(
  //         widget.nameController.text.toString(),
  //         widget.pswController.text.toString()
  //     );
  //
  //     if (validationResponse.statusCode == 200) {
  //       navigation.NavigateLocalTypePage(context);
  //     } else {
  //       setState(() {
  //         response = validationResponse.statusCode;
  //       });
  //     }
  //   } on SocketException {
  //     print('No Internet connection 😑');
  //     setState(() {
  //       response = 600;
  //     });
  //   } on HttpException {
  //     print("Couldn't find the post 😱");
  //     setState(() {
  //       response = 601;
  //     });
  //   } on FormatException {
  //     print("Bad response format 👎");
  //     setState(() {
  //       response = 602;
  //     });
  //   }
  // }
  //
  // _returnVerificationMessage() {
  //   String text;
  //   if (response == 0) {
  //     text = '';
  //   } else if (response == 0) {
  //     text = 'Incorrect user or password';
  //   } else if (response == 600) {
  //     text = 'No internet connection available';
  //   } else if (response == 601) {
  //     text = 'Could not find the server';
  //   } else if (response == 602) {
  //     text = 'Wrong format';
  //   } else {
  //     text = 'An error occurred';
  //   }
  //
  //   setState(() {
  //     text;
  //   });
  //
  //   return Text(
  //     text,
  //     style: TextStyle(
  //       fontWeight: FontWeight.normal,
  //       color: Colors.white,
  //     ),
  //   );
  // }

  NotifyParent(var content) {
    setState(() {
      content;
    });
  }
}
