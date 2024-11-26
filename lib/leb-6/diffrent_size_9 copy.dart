import 'package:flutter/material.dart';

class DiffrentSize extends StatelessWidget {
  const DiffrentSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Comman(color: Colors.red),
              Comman(color: Colors.green),
              Comman(color: Colors.pink),
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Comman(color: Colors.black, flex: 2),
              Comman(color: Colors.yellow, flex: 2),
              Comman(color: Colors.white30),
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Comman(color: Colors.yellow),
              Comman(color: Colors.green, flex: 2),
              Comman(color: Colors.pink, flex: 2),
            ],
          )),
        ],
      ),
    );
  }

  Widget Comman({required Color color, int? flex = 1}) {
    return Expanded(
      flex: flex!,
      child: Container(
        color: color,
      ),
    );
  }
}
