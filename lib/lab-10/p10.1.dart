import 'package:flutter/material.dart';

class ActionBarExe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ActionBar with Menu'),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              _showAlertDialog(context);
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'alert',
                child: Text('Show Alert'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Alert Dialog'),
          content: Text('This is an alert dialog.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
