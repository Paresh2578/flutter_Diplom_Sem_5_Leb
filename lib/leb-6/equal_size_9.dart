import 'package:flutter/material.dart';

class EqualSize extends StatelessWidget {
  const EqualSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Comman(color: Colors.red),
              Comman(color: Colors.green),
              Comman(color: Colors.pink),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Comman(color: Colors.black),
              Comman(color: Colors.yellow),
              Comman(color: Colors.white30),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Comman(color: Colors.yellow),
              Comman(color: Colors.green),
              Comman(color: Colors.pink),
            ],
          )),
        ],
      ),
    );
  }

  Widget Comman({required Color color}) {
    return Expanded(
      child: Container(
        color: color,
      ),
    );
  }
}
