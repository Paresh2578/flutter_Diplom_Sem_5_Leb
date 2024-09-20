import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DialogBoxExe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _showMaterialDialog(context),
              child: Text('Show Material Dialog'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showCupertinoDialog(context),
              child: Text('Show Cupertino Dialog'),
            ),
          ],
        ),
      ),
    );
  }

  void _showMaterialDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Material Dialog'),
          content: Text('This is a Material design dialog.'),
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

  void _showCupertinoDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('Cupertino Dialog'),
          content: Text('This is a Cupertino design dialog.'),
          actions: [
            CupertinoDialogAction(
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
