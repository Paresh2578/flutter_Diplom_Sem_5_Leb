import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // For formatting the date

class DatePickerScreen extends StatefulWidget {
  @override
  _DatePickerScreenState createState() => _DatePickerScreenState();
}

class _DatePickerScreenState extends State<DatePickerScreen> {
  DateTime? selectedDate; // To store the selected date

  // Function to pick a date
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000), // Earliest selectable date
      lastDate: DateTime(2100), // Latest selectable date
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display selected date or a placeholder message
            Text(
              selectedDate != null
                  ? 'Selected Date: ${DateFormat('dd/MM/yyyy').format(selectedDate!)}'
                  : 'No date selected',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: Text('Pick a Date'),
            ),
          ],
        ),
      ),
    );
  }
}


