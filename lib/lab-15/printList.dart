import 'package:flutter/material.dart';
import 'package:lebs/lab-15/database.dart';

class SelectAllTasks extends StatefulWidget {
  const SelectAllTasks({super.key});

  @override
  State<SelectAllTasks> createState() => _SelectAllTasksState();
}

class _SelectAllTasksState extends State<SelectAllTasks> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  void fetchData() async {
    print("loading..");
    MyDatabase db = new MyDatabase();
    var tasks = await db.getAllTasks();
    print('All Tasks: $tasks');
    print('All Tasks: ');

    //add addCategories
    await db.addCategories("abc");

    var tasksWithCategories = await db.getTasksWithCategories();
    print('Tasks with Categories: $tasksWithCategories');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
