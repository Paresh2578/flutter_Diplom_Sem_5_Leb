import 'package:flutter/material.dart';

class SortDataApp extends StatefulWidget {
  @override
  _SortDataAppState createState() => _SortDataAppState();
}

class _SortDataAppState extends State<SortDataApp> {
  List<String> items = ['Banana', 'Apple', 'Orange', 'Mango', 'Grapes'];

  void sortData(bool ascending) {
    setState(() {
      items.sort((a, b) => ascending ? a.compareTo(b) : b.compareTo(a));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sort Data Example'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'A→Z') {
                sortData(true);
              } else if (value == 'Z→A') {
                sortData(false);
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'A→Z',
                child: Text('Sort A→Z'),
              ),
              PopupMenuItem(
                value: 'Z→A',
                child: Text('Sort Z→A'),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
