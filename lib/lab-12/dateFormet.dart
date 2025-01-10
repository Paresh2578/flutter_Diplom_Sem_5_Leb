import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormatsScreen extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
   DateTime now = DateTime.now(); // Get current date and time

   // Format the current date into different formats
   String format1 = DateFormat('dd/MM/yyyy').format(now);
   String format2 = DateFormat('dd-MM-yyyy').format(now);
      String format3 = DateFormat('dd-MMM-yyyy').format(now);
      String format4 = DateFormat('dd-MM-yy').format(now);
      String format5 = DateFormat('dd MMM, yyyy').format(now);

      return Scaffold(
        appBar: AppBar(
          title: Text('Date Formats'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Current Date in Different Formats:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text('dd/MM/yyyy: $format1', style: TextStyle(fontSize: 16)),
              Text('dd-MM-yyyy: $format2', style: TextStyle(fontSize: 16)),
              Text('dd-MMM-yyyy: $format3', style: TextStyle(fontSize: 16)),
              Text('dd-MM-yy: $format4', style: TextStyle(fontSize: 16)),
              Text('dd MMM, yyyy: $format5', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      );
    }
}
