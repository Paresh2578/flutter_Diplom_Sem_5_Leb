import 'package:flutter/material.dart';

class ListViewBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<int> numbers = [1,2,3,4,5,6,7,8,9,10];

    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder Example'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Number ${numbers[index]}'),
          );
        },
      ),
    );
  }
}