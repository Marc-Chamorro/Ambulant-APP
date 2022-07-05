import 'package:ambulant/models/login_signup/login_user_model.dart';
import 'package:http/http.dart' as http;
import 'package:ambulant/constant/constant.dart';
import 'dart:convert';

class LoginUserProvider {
  dynamic AuthenticateAPI(String name, String password) async {
    LoginUserModel model = LoginUserModel(name, password);
    var response = await http.post(
      Uri.parse(ConstantAPIPaths.root + ConstantAPIPaths.loginAuthenticate),
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
