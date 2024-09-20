import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<int> numbers = [1,2,3,4,5,6,7,8,9,10];

    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: ListView(
        children: numbers.map((number) {
          return ListTile(
            title: Text('Number $number'),
          );
        }).toList(),
      ),
    );
  }
}