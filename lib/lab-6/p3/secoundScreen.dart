import 'package:flutter/material.dart';

class SecoudScreen extends StatelessWidget {
  const SecoudScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Secoud screen"),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back"))
            ],
          ),
        ));
  }
}
