import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    const String imageUrl =
        'https://flutter.dev/assets/homepage/carousel/slide_1-bg-4e2fcef1ae4cdb32e1ac92702a3b90bcf6d0aa8c6e24818415543a5d02ab2cbf.png'; // Replace with your desired image URL.

    return Scaffold(
      body: CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: (context, url) =>
            CircularProgressIndicator(), // Loading indicator
        errorWidget: (context, url, error) => Icon(Icons.error), // Error widget
        fit: BoxFit.cover, // Adjust the image fit
        width: 300,
        height: 200,
      ),
    );
  }
}
