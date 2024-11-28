import 'package:flutter/material.dart';

class PriorityListApp extends StatelessWidget {
  final List<Map<String, dynamic>> tasks = [
    {'title': 'Buy groceries', 'priority': 'High'},
    {'title': 'Check emails', 'priority': 'Medium'},
    {'title': 'Call mom', 'priority': 'Low'},
    {'title': 'Work out', 'priority': 'Medium'},
    {'title': 'Pay bills', 'priority': 'High'},
  ];

  Color getPriorityColor(String priority) {
    switch (priority) {
      case 'High':
        return Colors.red;
      case 'Medium':
        return Colors.orange;
      case 'Low':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Priority List'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return Card(
            color: getPriorityColor(task['priority']),
            child: ListTile(
              title: Text(task['title']),
              subtitle: Text('Priority: ${task['priority']}'),
            ),
          );
        },
      ),
    );
  }
}
