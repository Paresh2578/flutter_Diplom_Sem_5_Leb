import 'package:flutter/material.dart';
import 'package:lebs/lab-11/p2.dart';
import 'package:lebs/lab-20/PaginatedListView.dart';

import 'lab-10/FormValidation.dart';
import 'package:lebs/lab-11/p1.dart';

import 'lab-11/GridViewWIthText.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  GridViewWithTextDemo(),
    );
  }
}
