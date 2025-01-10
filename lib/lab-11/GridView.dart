import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> bgImages = [
        "https://images.pexels.com/photos/235986/pexels-photo-235986.jpeg?auto=compress&cs=tinysrgb&w=600", // Nature - Mountains
        "https://images.unsplash.com/photo-1540206395-68808572332f", // Abstract Gradient
        "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0", // Cityscape - Skyline at night
        "https://images.pexels.com/photos/276092/pexels-photo-276092.jpeg?auto=compress&cs=tinysrgb&w=600", // Minimalist - Clean gradient
        "https://images.unsplash.com/photo-1470229722913-7c0e2dbbafd3", // Space - Galaxy
        "https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=600", // Ocean - Waves
        "https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg?auto=compress&cs=tinysrgb&w=600", // Forest - Nature
        "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&w=600", // Urban - Street
        "https://images.pexels.com/photos/289586/pexels-photo-289586.jpeg?auto=compress&cs=tinysrgb&w=600", // Texture - Wooden
        "https://images.unsplash.com/photo-1446776811953-b23d57bd21aa"  // Sunset - Serene beach
    ];

    return Scaffold(
      appBar: AppBar(title: Text("GrideView Demo"),),
      body: GridView.builder(
        itemCount: bgImages.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
        return Container(height:100 , child: Image.network(bgImages[index] , fit: BoxFit.cover,));
      },),
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      //   children: bgImages.map((img) {
      //     return Container(height:100 , child: Image.network(img , fit: BoxFit.cover,));
      //   }).toList(),
      // ),
    );
  }
}
