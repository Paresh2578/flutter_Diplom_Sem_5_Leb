import 'package:flutter/material.dart';
import 'package:lebs/leb-6/diffrent_size_9%20copy.dart';
import 'package:lebs/leb-6/equal_size_9.dart';

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
      home: DiffrentSize(),
    );
  }
}
