import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //fontfamil name list:Roboto,Oswald,'Open Sans,Raleway,Open Sans,Playball,Montserrat etc..
    return Scaffold(
      body: Center(
        child: Column(children: [
          MyTextWidget(
            text: "React",
            fontSize: 30,
            fontFamily: 'Roboto',
            color: Colors.red,
            fontWeight: FontWeight.w800,
          ),
          MyTextWidget(
            text: "Hello  word!",
            fontSize: 55,
            fontFamily: 'Oswald',
          ),
          MyTextWidget(
            text: "Flutter",
            fontSize: 50,
            fontFamily: 'Montserrat',
            color: Colors.green,
          ),
          MyTextWidget(
            text: "Dart",
            fontSize: 30,
            fontFamily: 'Playball',
            color: Colors.orange,
          ),
        ]),
      ),
    );
  }

  Widget MyTextWidget(
      {required String text,
        Color? color,
        String? fontFamily,
        double? fontSize,
        FontWeight? fontWeight}) {
    return Text(
      text,
      style: GoogleFonts.getFont(fontFamily ?? "Lora",
          textStyle: TextStyle(
              color: color,
              fontSize: fontSize,
              fontFamily: fontFamily,
              fontWeight: fontWeight)),
    );
  }
}
