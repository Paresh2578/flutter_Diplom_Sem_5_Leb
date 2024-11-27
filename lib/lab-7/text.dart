import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Hello World",
          style: TextStyle(
            fontSize: 24.0, // Set the size of the text
            color: Colors.blue, // Set the color of the text
            fontWeight: FontWeight.bold, // Optional: make the text bold
          ),
        ),
      ),
    );
  }
}
