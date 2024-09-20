import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello world", style: TextStyle(fontSize: 30, color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
