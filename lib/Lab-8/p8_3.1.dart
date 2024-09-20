import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List of image paths
    final List<String> imagePaths = [
      'assets/img/image1.jpg',
      'assets/img/image2.png',
      'assets/img/image3.png',
      'assets/img/image4.png',
      'assets/img/image5.png',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Example'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
        ),
        children: imagePaths.map((path) {
          return Image.asset(path);
        }).toList(),
      ),
    );
  }
}