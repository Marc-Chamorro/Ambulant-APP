import 'package:ambulant/models/login_signup/signup_user_model.dart';
import 'package:http/http.dart' as http;
import 'package:ambulant/constant/constant.dart';
import 'dart:convert';

class SignupUserProvider {
  dynamic AuthenticateAPI(String name, String email, String password) async {
    SignupUserModel model = SignupUserModel(name, email, password);
    var response = await http.post(
      Uri.parse(ConstantAPIPaths.root + ConstantAPIPaths.userAdd),
      headers: {
        // 'Authorization': null,
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: json.encode(model.toJson()),
    );
    return response;
  }
}