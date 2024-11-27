import 'package:flutter/material.dart';

class TextFieldToTextWidget extends StatefulWidget {
  const TextFieldToTextWidget({super.key});

  @override
  State<TextFieldToTextWidget> createState() => _TextFieldToTextWidgetState();
}

class _TextFieldToTextWidgetState extends State<TextFieldToTextWidget> {
  final TextEditingController _controller = TextEditingController();
  String _displayedText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TextField to take input
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter your text",
              ),
            ),
            SizedBox(height: 16),
            // Button to update the displayed text
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _displayedText = _controller.text;
                });
              },
              child: Text("Display Text"),
            ),
            SizedBox(height: 16),
            // Text widget to show the input value
            Text(
              _displayedText,
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
