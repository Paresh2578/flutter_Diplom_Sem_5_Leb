import 'package:flutter/material.dart';

class ImageAsset extends StatelessWidget {
  const ImageAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/img/image.png'),
    );
  }
}
