import 'package:flutter/material.dart';

class AssetImg extends StatelessWidget {
  const AssetImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/img.png"),
    );
  }
}
