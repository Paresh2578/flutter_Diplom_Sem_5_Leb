import 'package:flutter/material.dart';

import '10.2.2.dart';

class SenderSide extends StatelessWidget {
  TextEditingController inputController = TextEditingController();
  SenderSide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: inputController,
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ReceiverSide(inputController.text)));
          }, child: Text("Send Data"))
        ],
      ),
    );
  }
}
