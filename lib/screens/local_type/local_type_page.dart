import 'package:flutter/material.dart';

class LocalTypePage extends StatefulWidget {
  const LocalTypePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LocalTypePage();
  }
}

class _LocalTypePage extends State<LocalTypePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.transparent,
      child: Text(
        "Your Text Here",
        style: TextStyle(
          fontFamily: 'custom font', // remove this if don't have custom font
          fontSize: 20.0, // text size
          color: Colors.white, // text color
        ),
      ),
    );
  }
}