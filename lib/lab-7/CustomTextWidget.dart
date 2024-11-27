import 'package:flutter/material.dart';

class CustomTextWidgetDemo extends StatelessWidget {
  const CustomTextWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomText(text: 'paresh', color: Colors.red, fontSize: 50),
          CustomText(text: 'ABC', fontSize: 100),
          CustomText(
              text: 'paresh',
              color: Colors.green,
              fontFamily: 'EduAUVICWANTArrows',
              fontSize: 200),
        ],
      ),
    );
  }

  Widget CustomText(
      {required String text,
      Color? color,
      double? fontSize,
      String? fontFamily}) {
    return Text(
      text,
      style:
          TextStyle(fontFamily: fontFamily, fontSize: fontSize, color: color),
    );
  }
}
