import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ambulant/constant/constant.dart';
import 'package:ambulant/screens/login_signup/login_widget/login_widget.dart';
import 'package:ambulant/widgets/title_&_logo/title_and_logo_widget.dart';
import 'package:ambulant/screens/login_signup/login_signup_buttons_widget/login_signup_buttons_widget.dart';
import 'package:ambulant/screens/login_signup/signup_widget/signup_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
// State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  bool singIn = true;
  late TextEditingController nameController, pswController, mailController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    pswController = TextEditingController();
    mailController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //backgroundColor: const Color(0xFFFFB300),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xFFFFEE32), Color(0xFFFFB300)],
          stops: [
            0,
            0.45,
          ],
        )),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                TitleAndLogo(),
                LoginSignupButtons(
                  login: singIn,
                  onChanged: UpdateWidget,
                ),
                Container(
                  decoration: BoxDecoration(color: ConstantColors.transparent),
                  height: MediaQuery.of(context).size.height * 0.66,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                  child: _ReturnLoginSignupWidget(
                    singIn,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _ReturnLoginSignupWidget(bool singIn) {
    if (singIn) {
      return LoginWidget(
        nameController: nameController,
        pswController: pswController,
      );
    } else {
      return SignupWidget(
        nameController: nameController,
        pswController: pswController,
        mailController: mailController
      );
    }
  }

  UpdateWidget(bool selectedWidget) {
    setState(() {
      singIn = selectedWidget;
    });
  }
}
