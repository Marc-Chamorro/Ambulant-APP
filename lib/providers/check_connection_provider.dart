import 'package:http/http.dart' as http;
import 'package:ambulant/constant/constant.dart';
import 'dart:convert';

class CheckConnectionProvider {
  dynamic EchoPingAPI() async {
    var response = await http.post(
      Uri.parse(ConstantAPIPaths.root + ConstantAPIPaths.loginEchoPing),
    );
    return response;
  }
}
