import 'package:flutter/material.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _FavouritePage();
  }
}

class _FavouritePage extends State<FavouritePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text(
        "Favourite page",
        style: TextStyle(
          fontFamily: 'custom font', // remove this if don't have custom font
          fontSize: 20.0, // text size
          color: Colors.white, // text color
        ),
      ),
    );
  }
}