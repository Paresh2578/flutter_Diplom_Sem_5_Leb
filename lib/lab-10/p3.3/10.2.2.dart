import 'package:flutter/material.dart';

class ReceiverSide extends StatelessWidget {
  String Data = "";
  ReceiverSide(String Data){
    this.Data = Data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Data),
      ),
    );
  }
}
