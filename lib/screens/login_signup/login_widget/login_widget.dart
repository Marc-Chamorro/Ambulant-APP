import 'package:ambulant/constant/constant.dart';
import 'package:ambulant/screens/login_signup/login_widget/logic.dart';
import 'package:ambulant/widgets/text_form_fields/pwd_form_field_request_widget.dart';
import 'package:ambulant/widgets/text_form_fields/text_form_field_request_widget.dart';
import 'package:flutter/material.dart';

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
              child: Text(
                'Login',
                style: ConstantTextStyles.buttonLoginSignup,
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

  NotifyParent(var content) {
    setState(() {
      content;
    });
  }
}
