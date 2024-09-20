import 'package:flutter/material.dart';

class GridViewBuilderExample extends StatelessWidget {
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
        title: Text('GridView.builder Example'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
        ),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Image.asset(imagePaths[index]);
        },
      ),
    );
  }
}