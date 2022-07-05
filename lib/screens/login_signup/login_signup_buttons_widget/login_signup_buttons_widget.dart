import 'package:ambulant/constant/constant.dart';
import 'package:ambulant/screens/login_signup/login_signup_buttons_widget/logic.dart';
import 'package:flutter/material.dart';

class LoginSignupButtons extends StatefulWidget {
  late bool login;
  final Function onChanged;

  LoginSignupButtons({
    required this.login,
    required this.onChanged,
  });

  _LoginSignupButtons createState() => _LoginSignupButtons();
}

class _LoginSignupButtons extends State<LoginSignupButtons> {
  final LoginSignupButtonsLogic logic = LoginSignupButtonsLogic();

  late bool login;

  @override
  void initState() {
    super.initState();
    login = widget.login;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start, //MainAxisSize.max,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(1),
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      if (!login) {
                        setState(() {
                          login = true;
                          widget.onChanged(login);
                        });
                      }
                    },
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: logic.ChangePrimaryColor(login),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: const Color(0x004B39EF),
                        side: const BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                //EdgeInsets.fromLTRB(5, 1, 5, 5),
                child: Container(
                  width: 90,
                  height: 3,
                  //margin: EdgeInsets.fromLTRB(1, 1, 1, 1),
                  decoration: BoxDecoration(
                    color: logic.ChangeBarPrimaryColor(login),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(1),
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: TextButton(
                    onPressed: () {
                      if (login) {
                        setState(() {
                          login = false;
                          widget.onChanged(login);
                        });
                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: logic.ChangePrimaryColor(!login),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: const Color(0x004B39EF),
                        side: const BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                child: Container(
                  width: 90,
                  height: 3,
                  decoration: BoxDecoration(
                    color: logic.ChangeBarPrimaryColor(!login),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
