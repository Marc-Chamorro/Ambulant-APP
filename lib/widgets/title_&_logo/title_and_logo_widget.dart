import 'package:ambulant/constant/constant.dart';
import 'package:flutter/material.dart';

class TitleAndLogo extends StatelessWidget {
  // final String name;
  // const DogName(this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ConstantString.appName,
            textAlign: TextAlign.center,
            style: ConstantTextStyles.titleClearStyle,
          ),
          Padding(
            padding:
            const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
            child: Image.asset(
              ConstantImages.logoTransparent,
              width: 50,
              height: 50,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}