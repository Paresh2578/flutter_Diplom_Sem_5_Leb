import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  TextFieldExample({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TextField with a controller
          TextField(
            controller: _controller,
          ),
          SizedBox(height: 16),
          // Button to print input value to terminal
          ElevatedButton(
            onPressed: () {
              // Print the value from the controller
              print('Input Value: ${_controller.text}');
            },
            child: Text('Print to Terminal'),
          ),
        ],
      ),
    );
  }
}
