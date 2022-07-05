import 'package:ambulant/screens/local_type/local_type_page.dart';
import 'package:flutter/material.dart';

class Navigation {
  void NavigateLocalTypePage(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => LocalTypePage())
    );
  }
}