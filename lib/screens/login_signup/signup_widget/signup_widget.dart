import 'package:ambulant/screens/login_signup/signup_widget/logic.dart';
import 'package:ambulant/widgets/text_form_fields/pwd_form_field_request_widget.dart';
import 'package:ambulant/widgets/text_form_fields/text_form_field_request_widget.dart';
import 'package:flutter/material.dart';


class SignupWidget extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController pswController;
  final TextEditingController mailController;

  SignupWidget({
    required this.nameController,
    required this.pswController,
    required this.mailController,
  });

  _SignupWidget createState() => _SignupWidget();
}

class _SignupWidget extends State<SignupWidget> {
  final SignupLogic logic = SignupLogic();

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
          child: TextFormFieldRequest(
            controller: widget.mailController,
            hint: 'Write your email here',
            inputType: TextInputType.text,
            onChanged: NotifyParent,
            labelText: 'Email',
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
                logic.UserCreation(
                    NotifyParent,
                    context,
                    widget.nameController.text.toString(),
                    widget.mailController.text.toString(),
                    widget.pswController.text.toString()
                );
              },
              child: const Text(
                'Sign up',
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

  NotifyParent(var content) {
    setState(() {
      content;
    });
  }
}